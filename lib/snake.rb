class Snake
  def initialize(x, y)
    @body = [[x, y], [x - 1, y], [x - 2, y]]
    @direction = [1, 0]
  end

  def head
    @body.first
  end
end

snake = Snake.new(5, 5)
p snake.head
p snake.instance_variable_get(:@body)
