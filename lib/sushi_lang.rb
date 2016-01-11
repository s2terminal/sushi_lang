require "sushi_lang/version"

module Lang
  # SushiLang Compiler
  class Sushi
    NETA = [
      :pointer_increment,       # >
      :pointer_decrement,       # <
      :pointer_value_increment, # +
      :pointer_value_decrement, # -
      :output,                  # .
      :input,                   # ,
      :jump_forward,            # [
      :jump_backward            # ]
    ]

    def initialize(filename)
      # Compiler
      @source = filename
      @object_code = []
      @jump = {}

      # Turing Machine
      @tape = []
      @pointer = 0
      @line = 0
    end

    def compile
      File.open(@source) do |file|
        su_count = 0
        line = 0
        jump_stack = []

        file.each_char{|char|
          case char
            when "す"
              su_count += 1
            when "し"
              code = NETA[su_count]

              # jump
              if code == :jump_forward
                jump_stack.push(line)
              elsif code == :jump_backward
                left_curly_brace = jump_stack.pop
                @jump[line] = left_curly_brace
                @jump[left_curly_brace] = line
              end

              @object_code.push(code)
              su_count = 0
              line += 1
          end
        }

      end
    end

    def execute
      until @object_code[@line].nil?
        self.send(@object_code[@line])
        @line += 1
      end
    end

    private

    # ++p;
    def pointer_increment
      @pointer += 1
    end

    # --p;
    def pointer_decrement
      @pointer -= 1
    end

    # ++*p;
    def pointer_value_increment
      @tape[@pointer] ||= 0
      @tape[@pointer] += 1
    end

    # --*p;
    def pointer_value_decrement
      @tape[@pointer] ||= 0
      @tape[@pointer] -= 1
    end

    # putchar(*p);
    def output
      print @tape[@pointer].chr
    end

    # *p = getchar();
    def input
      @tape[@pointer] ||= 0
      @tape[@pointer] = STDIN.getc
    end

    # while (*p) {
    def jump_forward
      @line = @jump[@line] if @tape[@pointer] == 0
    end

    # }
    def jump_backward
      @line = @jump[@line] if @tape[@pointer] != 0
    end
  end

  # Brainfuck Converter
  class Brainfuck
    def initialize(filename)
      @source = filename
    end

    def compile
      File.open(@source) do |file|
        hash = {
          '>' => 'し',
          '<' => 'すし',
          '+' => 'すすし',
          '-' => 'すすすし',
          '.' => 'すすすすし',
          ',' => 'すすすすすし',
          '[' => 'すすすすすすし',
          ']' => 'すすすすすすすし',
        }
        code = ''
        file.each_char{|char|
          hash[char] && code += hash[char]
        }
        code
      end
    end
  end
end
