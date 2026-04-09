#lang racket

(struct ingredient (type displayName image price))

;; Sauces
(define tomato-sauce (ingredient "sauce" "Tomato Sauce" "tomatoSauce.png" 1))
(define cream (ingredient "sauce" "Cream" "cream.png" 1))

;; Jeeses
(define mozzarella (ingredient "jeeses" "Mozzarella" "mozzarella.png" 3))
(define americanCheese (ingredient "jeeses" "American Cheese" "americanCheese.png" 2))
(define brie (ingredient "jeeses" "Brie" "brie.png" 3))
(define burrata (ingredient "jeeses" "Burrata" "burrata.png" 5))

;; Toppings
(define pepperoni (ingredient "topping" "Pepperoni" "pepperoni.png" 5))
(define mushrooms (ingredient "topping" "Mushrooms" "mushrooms.png" 2))
(define ham (ingredient "topping" "Ham" "ham.png" 4))
(define fries (ingredient "topping" "Fries" "fries.png" 7))
(define turkey (ingredient "topping" "Turkey" "turkey.png" 5))
(define corn (ingredient "topping" "Corn" "corn.png" 2))

;; Pizza
(struct pizza (size ingredients) #:transparent)

;; Customer's order
(struct order (customerName pizza price))


(define (calculatePizzaPrice pizza)
  (define items (pizza-ingredients pizza))

  (for ([ing items])
    
    (displayln (format "Adding ~a to the oven..." (ingredient-displayName ing)))
    )
  )


(define margherita (pizza 10 (list mozzarella brie)))

(calculatePizzaPrice margherita)