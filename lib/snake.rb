class Snake

  def initialize(x, y)
    @body = [[x, y], [x - 1, y], [x - 2, y]]
    @direction = [1, 0]
  end

  def head
    @body.first
  end

  def move
    x = head[0] + @direction[0]
    y = head[1] + @direction[1]
    @body.unshift([x, y])
    @body.pop
  end

  def turn(new_direction)
    opposite = [-@direction[0], -@direction[1]]
    @direction = new_direction unless new_direction == opposite
  end

end

snake = Snake.new(5, 5)
p snake.head
p snake.instance_variable_get(:@body)
snake.move
p snake.instance_variable_get(:@body)   

snake.turn([-1, 0])
snake.move
p snake.head

snake.turn([0, -1])
snake.move
p snake.head
