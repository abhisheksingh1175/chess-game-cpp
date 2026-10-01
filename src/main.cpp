#include <SFML/Graphics.hpp>
#include<iostream>
using namespace std;
using namespace sf;

void drawPiece(char piece, int row, int col, float squareSize,float offsetX, float offsetY, RenderWindow& window,
               Texture& wr, Texture& wn, Texture& wb, Texture& wq, Texture& wk, Texture& wp,
               Texture& br, Texture& bn, Texture& bb, Texture& bq, Texture& bk, Texture& bp)
{
    Texture* texture = nullptr;

    if(piece == 'R') texture = &wr;
    if(piece == 'N') texture = &wn;
    if(piece == 'B') texture = &wb;
    if(piece == 'Q') texture = &wq;
    if(piece == 'K') texture = &wk;
    if(piece == 'P') texture = &wp;

    if(piece == 'r') texture = &br;
    if(piece == 'n') texture = &bn;
    if(piece == 'b') texture = &bb;
    if(piece == 'q') texture = &bq;
    if(piece == 'k') texture = &bk;
    if(piece == 'p') texture = &bp;

    if(texture == nullptr)
        return;

    Sprite sprite(*texture);

    sprite.setScale({
        squareSize / texture->getSize().x,
        squareSize / texture->getSize().y
    });

    sprite.setPosition({
        offsetX+ col* squareSize,
        offsetY+ row * squareSize
    });

    window.draw(sprite);
}

int main()
{   
    //storing the coordinates of pointed(Mouse)
    int selectedRow=-1, selectedCol=-1;
    //deciding the turns to move pieces
    bool whiteTurn=true;

    char board[8][8]={};
    char whitePieces[8] = {'R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'};
    for(int col=0; col<8; col++){
        board[7][col]=whitePieces[col];
    }
    for (int col = 0; col < 8; col++){
        board[6][col] = 'P';
    }
    char blackPieces[8] = {'r', 'n', 'b', 'q', 'k', 'b', 'n', 'r'};

    for (int col = 0; col < 8; col++){
        board[0][col] = blackPieces[col];
    }

    for (int col = 0; col < 8; col++){
        board[1][col] = 'p';
    }


    for (int row = 0; row < 8; row++){
        for (int col = 0; col < 8; col++){
            cout << board[row][col] << ".";
        }
        cout << endl;
    }
    Texture wr, wn, wb, wq, wk, wp;
    Texture br, bn, bb, bq, bk, bp;

    wr.loadFromFile("pieces/wr.png");
    wn.loadFromFile("pieces/wn.png");
    wb.loadFromFile("pieces/wb.png");
    wq.loadFromFile("pieces/wq.png");
    wk.loadFromFile("pieces/wk.png");
    wp.loadFromFile("pieces/wp.png");

    br.loadFromFile("pieces/br.png");
    bn.loadFromFile("pieces/bn.png");
    bb.loadFromFile("pieces/bb.png");
    bq.loadFromFile("pieces/bq.png");
    bk.loadFromFile("pieces/bk.png");
    bp.loadFromFile("pieces/bp.png");

    


    RenderWindow window(
        VideoMode({800,800}),
        "Chess Game"
    );
    
    float boardSize;
    float squareSize;
    float offsetX;
    float offsetY;

    while (window.isOpen())
    {   
        boardSize = min(window.getSize().x, window.getSize().y);
        squareSize = boardSize / 8.f;
        offsetX = (window.getSize().x - boardSize) / 2.f;
        offsetY = (window.getSize().y - boardSize) / 2.f;
        while (const optional event = window.pollEvent())
        {
            if (event->is<Event::Closed>()){
                window.close();
            }
            if (const auto* resized = event->getIf<Event::Resized>())
            {
                View view = window.getView();

                view.setSize({
                    static_cast<float>(resized->size.x),
                    static_cast<float>(resized->size.y)
                });

                view.setCenter({
                    resized->size.x / 2.f,
                    resized->size.y / 2.f
                });

                window.setView(view);
            }
            if (const auto* mouse = event->getIf<Event::MouseButtonPressed>())
            {
                if (mouse->button == Mouse::Button::Left)
                {   
                    Vector2i mousePosition = Mouse::getPosition(window);
                    

                    int col = (mousePosition.x-offsetX) / squareSize;
                    int row = (mousePosition.y-offsetY) / squareSize;


                    if(row >= 0 && row < 8 && col >= 0 && col < 8)
                    {
                        if(selectedRow==-1){
                            if(board[row][col]!='\0'){
                                if(whiteTurn && isupper(board[row][col]))
                            {
                                selectedRow = row;
                                selectedCol = col;
                            }
                            else if(!whiteTurn && islower(board[row][col]))
                            {
                                selectedRow = row;
                                selectedCol = col;
                            }
                            }
                        }else{
                            board[row][col]=board[selectedRow][selectedCol];
                            board[selectedRow][selectedCol]='\0';
                            whiteTurn=!whiteTurn;
                            selectedRow=-1;
                            selectedCol=-1;
                        }
                        
                    }
                }
            }
            
        }

        window.clear();
        


        for(int row=0; row<8; row++){
            for(int col=0; col<8; col++){
                RectangleShape square;
                square.setSize({squareSize,squareSize});
                square.setPosition({
                    offsetX+ col * squareSize,
                    offsetY+ row * squareSize});
                if((row+col)%2==0){
                    square.setFillColor(Color::White);
                }else{
                    square.setFillColor(Color::Black);
                }
                if(row==selectedRow && col==selectedCol){
                    square.setFillColor(Color::Yellow);
                }
                
                
                window.draw(square);
                drawPiece(board[row][col], row, col, squareSize,offsetX,offsetY,window,
                  wr, wn, wb, wq, wk, wp,
                  br, bn, bb, bq, bk, bp);
                
                
            }
        }
        window.display();
    }
    return 0;
}