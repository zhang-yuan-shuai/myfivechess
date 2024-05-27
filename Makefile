all: main.o ACSearcher.o ChessEngine.o PossiblePositionManager.o
	arm-linux-gnueabihf-g++ -static-libstdc++ -o main main.o ACSearcher.o ChessEngine.o PossiblePositionManager.o
clear:
	rm -rf *.o main
main.o: main.cpp
	arm-linux-gnueabihf-g++ -static-libstdc++ -o main.o -c main.cpp
ACSearcher.o: ACSearcher.cpp
	arm-linux-gnueabihf-g++ -static-libstdc++ -o ACSearcher.o -c ACSearcher.cpp
ChessEngine.o:
	arm-linux-gnueabihf-g++ -static-libstdc++ -o ChessEngine.o -c ChessEngine.cpp
PossiblePositionManager.o:
	arm-linux-gnueabihf-g++ -static-libstdc++ -o PossiblePositionManager.o -c PossiblePositionManager.cpp

