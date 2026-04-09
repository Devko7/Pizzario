#lang racket
(require 2htdp/universe)
(require 2htdp/image)

;; State: Number (represents x-position)
;; render: State -> Image
(define (render x) (place-image (circle 10 "solid" "red") x 50 (empty-scene 100 100)))

;; move: State -> State
(define (move x) (+ x 1))

;; Start game
(big-bang 0
  (on-tick move)
  (to-draw render))
