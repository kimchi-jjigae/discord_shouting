#! /usr/bin/env ruby

DIGITS = {
  '1' => ':one:',
  '2' => ':two:',
  '3' => ':three:',
  '4' => ':four:',
  '5' => ':five:',
  '6' => ':six:',
  '7' => ':seven:',
  '8' => ':eight:',
  '9' => ':nine:',
  '0' => ':zero:'
}.freeze

PUNCTUATION = {
  '?' => ':question:',
  '!' => ':exclamation:',
  '.' => ':record_button:',
  '-' => ':heavy_minus_sign:'
}.freeze

SPECIAL_ALPHA = {
  'a' => ':a: ',
  'b' => ':b: ',
  'o' => ':o2: '
}.freeze

def scream(char)
  ":regional_indicator_#{char}:"
end

def screamify(char)
  case char
  when /[abo]/
    (rand(3) == 0) ? SPECIAL_ALPHA[char] : scream(char)
  when /[0-9]/
    DIGITS[char]
  when /[-.?!]/
    PUNCTUATION[char]
  when /[a-zA-Z]/
    scream(char)
  else
    ""
  end
end


print "input text: "

boring_string = gets

loud_string = boring_string.
  split("").
  map(&:downcase).
  map{|char| screamify(char)}.
  join(" ")

puts loud_string


