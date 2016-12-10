#include <iostream>
#include <cstring>
#include <cstdlib>
#include <ctime>
#include "play.h"
using namespace std;

Movable_chs_map Game::movable_chs_map = Game::create_movable_chs_map();

int main() {
	int cmd;
	cout << "====================================" << endl;
	cout << "------EinStein würfelt nicht!------" << endl;
	cout << "====================================" << endl;
	cout << "Please choose a mode:" << endl;
	cout << "0)Player v.s Player" << endl;
	cout << "1)AI v.s Player" << endl;
	cout << "2)AI v.s AI" << endl;
	cout << "3)Contest mode" << endl;
	cout << "Choose: ";
	cin >> cmd;
	cout << endl;
	Play ewn;
	if (cmd == 0)
		ewn.twoPlayers();
	else if (cmd == 1)
		ewn.playerAI();
	else if (cmd == 2)
		ewn.twoAIs();
	else if (cmd == 3)
		ewn.contestAI();
	else
		cout << "It's not a command" << endl;
	return 0;
}
