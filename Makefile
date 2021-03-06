.PHONY: clean
all: ewn

CXXFLAGS+=-g -Wall
LDLIBS+=-lstdc++
ewn: main.o play.o ewnAi.o randomAi.o mcts.o uct.o tree_node.o minimax.o game.o
	g++ main.o play.o ewnAi.o randomAi.o mcts.o uct.o tree_node.o minimax.o game.o -o ewn
main.o: main.cpp play.o play.h
	g++ main.cpp -c -o main.o
play.o: play.cpp play.h ewnAi.o ewnAi.h game.o game.h
	g++ play.cpp -c -o play.o
ewnAi.o: ewnAi.cpp ewnAi.h minimax.o minimax.h minimax1.h minimax2.h minimax3.h minimax4.h mcts.o mcts.h randomAi.o randomAi.h
	g++ ewnAi.cpp -c -o ewnAi.o
randomAi.o: randomAi.cpp randomAi.h game.o game.h
	g++ randomAi.cpp -c -o randomAi.o
mcts.o: mcts.cpp mcts.h tree_node.o tree_node.h uct.o uct.h
	g++ mcts.cpp -c -o mcts.o
uct.o: uct.cpp uct.h tree_node.o tree_node.h
	g++ uct.cpp -c -o uct.o
tree_node.o: tree_node.cpp tree_node.h game.o game.h
	g++ tree_node.cpp -c -o tree_node.o
minimax.o: minimax.cpp minimax.h game.o game.h
	g++ minimax.cpp -c -o minimax.o
game.o: game.cpp game.h
	g++ game.cpp -c -o game.o
clean:
	rm -rf ewn *.o 