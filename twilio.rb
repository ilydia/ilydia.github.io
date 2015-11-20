####### Magic 8-Ball Ruby Script #######

#Accept a question

puts "What is your \"Yes/No\" question?"
question = gets.chomp

#List of Magice 8-Ball Answers
possible_answers = ["It is certain",
"It is decidedly so",
"Without a doubt",
"Yes definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful"]

#Generate random answer from possible answers array
magic_answer = possible_answers[rand(0..19)]

##########
#twilio-ruby

require 'rubygems'
require 'twilio-ruby'

account_sid = 'ACb54f87e7352852abdf9284281d94429d'
auth_token = '34bff597785099633c8450dd233c4425'

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
:from => "(970) 672-4854",
:to =>"(970) 556-5020",
:body => "You asked: #{question} The Magic 8-Ball says: #{magic_answer}"
)

puts "The following message was texted to #{message.to}:"
puts message.body


                                        