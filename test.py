import unittest
import game_of_life


class TestGame(unittest.TestCase):
    def test_initialize_board(self):
        game_of_life.Game(10, 10)
