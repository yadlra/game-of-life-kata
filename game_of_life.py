class Game():
    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.cells = [[False for i in range(b)] for d in range(a)]

    def get_cell(self, a, b):
        return self.cells[a][b]

    def set_cell(self, a, b, value):
        self.cells[a][b] = value
