# Comp-Sci-Final-Project

# PONGPONG

This project is a game of pong. It allows for two people to play on the same keyboard. The purpose of this game is for two players to play up to a game of 10 in pong. 

### Difficulties or opportunities you encountered along the way.

We had two main difficulties as we were coding the game of pong. The first one was having the ball move in various directions at different speeds. When we began we could only make it move one way at one speed and it would not stay within in the boundaries. The second difficulty was getting the ball to bounce off the paddle. When we thought we had successfully coded the collision, we would run the code and it would turn out that the ball would go straight through the paddle. 

### Most interesting piece of your code and explanation for what it does.

```Java
if (!startScreen) {
    p.p1(p1X, p1Y, 50, 90);
    p.p2(p2X, p2Y, 50, 90);


    if (keyPressed) {
      if (false==p1Y<=0)
        if (key=='w')
          p1Y-=6;
      if (false==p1Y>=height-90)
        if (key=='s')
          p1Y+=6;
      if (false==p2Y<=0)
        if (key=='i')
          p2Y-=6;
      if (false==p2Y>=height-90)
        if (key=='k')
          p2Y+=6;
    }
```
This is one of the most interesting pieces of code in our project. It states that if the game is not on the start screen that the paddles would move. We had to establish which keys would be pressed for the paddles to move up and down. This code is only working with the y value of the two paddles. For example, if the player one Y value is not equal to 0 than it is still able to move down 6. If the player one y value is not greater than equal to the height minus 90 than it is still able to increase by 6. We had to do the height-90 because otherwise it would have made the whole paddle go off the screen and the very bottom of the paddle be at the edge. We did the same if statements for the player two paddle by using the variable p2Y. 
At the beginning of the section we also used the object p to call to the class paddles which had the parameters of each paddle. 

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Sreeman and Alex

## Acknowledgments

* Jonny Wise helped us with our collision because as we worked on it the ball would collide in open space instead of only with the paddle. 
* Inspiration, Pong
* etc
