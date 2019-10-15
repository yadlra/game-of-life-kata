class Game():
    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.cells = [[False for i in range(b)] for d in range(a)]
