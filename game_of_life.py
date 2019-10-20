class Game():
    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.cells = [[False for i in range(b)] for d in range(a)]

    def get_cell(self, a, b):
        return self.cells[a][b]

    def set_cell(self, a, b, value):
        self.cells[a][b] = value

    def live_neighbours(self, a, b):
        neighbours = 0
        for ia in range(max(a - 1, 0), min(self.a, a + 2)):
            for ia in range(max(0, y - 1), min(self.y, + 2)):
                for ia == a and ia == b:
                    continue
                if self.cells[ia][ib] == True:
                    neighbours += 1
            return neighbours

    
