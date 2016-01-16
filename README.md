# SushiLang

Irasshaimase! This is the perfect language.

## Syntax

|strings|meaning|
|--|--|
|し|pointer_increment|
|すし|pointer_decrement|
|すすし|pointer_value_increment|
|すすすし|pointer_value_decrement|
|すすすすし|output|
|すすすすすし|input|
|すすすすすすし|jump_forward|
|すすすすすすすし|jump_backward|

## Installation

Install it yourself as:

```
$ gem install specific_install
$ gem specific_install -l https://github.com/s2terminal/sushi_lang.git
```

## Usage

`sushi_lang [file]`

### Hello World

```
$ cat sample/sample_script.sushi 
しすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすしすすすすしすすしすすしすすしすすしすすしすすしすすしすすすすしすすすすしすすしすすしすすしすすすすしすすすすすすしすすすしすすすすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすししすすすしすすすすすすすしすしすすすすしすすしすすしすすしすすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすすしすすすすすすしすすすしすすすすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすしすすすすしすすすすすすしすすすしすすすすすすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすし

$ sushi_lang sample/sample_script.sushi
Hello World!
```

Agari!

### Convert from Brainfu*k

`sushi_lang --brainfuck [file]`

```
$ cat sample/sample_script.brainfuck 
>+++++++++[<++++++++>-]<.>+++++++[<++++>-]<+.+++++++..+++.[-]>++++++++[<++++>-]<.>+++++++++++[<+++++>-]<.>++++++++[<+++>-]<.+++.------.--------.[-]>++++++++[<++++>-]<+.[-]++++++++++.

$ sushi_lang --brainfuck sample/sample_script.brainfuck 
しすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすしすすすすしすすしすすしすすしすすしすすしすすしすすしすすすすしすすすすしすすしすすしすすしすすすすしすすすすすすしすすすしすすすすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすししすすすしすすすすすすすしすしすすすすしすすしすすしすすしすすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすしすすすすしすすすすすすしすすすしすすすすすすすししすすしすすしすすしすすしすすしすすしすすしすすしすすすすすすしすしすすしすすしすすしすすししすすすしすすすすすすすしすしすすしすすすすしすすすすすすしすすすしすすすすすすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすしすすすすし
```

Gochisosama!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

