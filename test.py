import unittest
import game_of_life


class TestGame(unittest.TestCase):
    def test_initialize_board(self):
        game_of_life.Game(10, 10)

    def test_initial_state_cell_dead(self):
        board = game_of_life.Game(1, 1)
        self.assertEqual(board.get_cell(0, 0), False)


if __name__ == '__main__':
    unittest.main()
