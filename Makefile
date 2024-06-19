CC= arm-linux-gnueabihf-g++
OJB=main.o ACSearcher.o ChessEngine.o PossiblePositionManager.o
all: $(OJB)
	$(CC) -static-libstdc++ -o main $^ 
%.o: %.cpp
	$(CC) -static-libstdc++ -o $@ -c $< 
.PHONY: clean
clean:
	rm -rf *.o main
