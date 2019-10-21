class Game():
    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.cells = [[False for i in range(b)] for j in range(a)]

    def get_cell(self, a, b):
        return self.cells[a][b]

    def set_cell(self, a, b, value):
        self.cells[a][b] = value

    def live_neighbours(self, a, b):
        neighbours = 0
        for ia in range(max(a - 1, 0), min(self.a, a + 2)):
            for ib in range(max(0, b - 1), min(self.b, b + 2)):
                if ia == a and ib == b:
                    continue
                if self.cells[ia][ib] == True:
                    neighbours += 1
            return neighbours

    def create_generation(self):
        new_cells = [[False for i in range(self.b)] for j in range(self.a)]

        for a in range(self.a):
            for b in range(self.b):
                neighbours = self.live_neighbours(a, b)

                if self.cells[a][b]:
                    if neighbours == 2 or neighbours == 3:
                        new_cells[a][b] = True

                    else:
                        if neighbours == 3:
                            new_cells[a][b] = True

            self.cells = new_cells
