% Define responses for specific questions
response([hello], 'Hello! How can I help you today?').
response([hi], 'Hi there! What would you like to know?').
response([how, are, you], 'I am just a bunch of code, but thanks for asking!').
response([what, is, your, name], 'I am a simple Prolog chatbot created to assist you!').
response([bye], 'Goodbye! It was nice chatting with you.').
% Default response if no pattern matches
response(_, 'I am not sure how to answer that, but I am still learning!').

% Start the chatbot
chat :-
    write('CHATBOT: Hello! I am a simple chatbot. Type your message or type "bye." to exit.'), nl,
    chat_loop.

chat_loop :-
    write('YOU: '),
    read(Input),
    (
        Input = bye ->
        response([bye], Response),
        write('Chatbot: '), write(Response), nl;
        response(Input, Response),
        write('CHATBOT: '), write(Response), nl,
        chat_loop
    ).
