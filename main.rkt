#lang racket
(require raylib/2d/unsafe)

(InitWindow 960 540 "Pizzario - POPL CS")

  (let loop ()
    (when (not (WindowShouldClose))
      (BeginDrawing)
      (ClearBackground RAYWHITE)
      (DrawText "I hate racket" 10 10 20 LIME)
      (EndDrawing)
      (loop)))

  (CloseWindow)