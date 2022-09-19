;;
;; Test datecal
;;

(add-load-path "." :relative)
(use gauche.test)
(use srfi-19)

(test-start "datecal")
(use datecal)
(test-module 'datecal)

(test-section "datecal-function")

(define *date-format* "~Y-~m-~dT~H:~M:~S~z")
(define *hour-sec*    3600)
(define (time-to-hour time) (/. (time-second time) *hour-sec*))
(define (hour-to-time hour) (make-time 'time-duration 0 (* hour *hour-sec*)))

(define date1 (string->date "2000-01-01T08:30:00+0900" *date-format*))
(define date2 (string->date "2000-01-01T17:00:00+0900" *date-format*))
(define date3 (string->date "2000-01-02T08:30:00+0900" *date-format*))
(define date4 (string->date "2000-01-01T11:00:00+0900" *date-format*))
(define date5 (string->date "2000-01-01T06:00:00+0900" *date-format*))

(test* "date-diff-1" 8.5 (time-to-hour (date-diff date2 date1)))
(test* "date-diff-2" 24.0  (time-to-hour (date-diff date3 date1)))

(test* "date-add-time-1" date4 (date-add-time date1 (hour-to-time 2.5)))

(test* "date-sub-time-1" date5 (date-sub-time date1 (hour-to-time 2.5)))

(test* "time-add-1" 6.0 (time-to-hour (time-add (hour-to-time 2.5) (hour-to-time 3.5))))

(test* "time-sub-1" -1.0 (time-to-hour (time-sub (hour-to-time 2.5) (hour-to-time 3.5))))

;; summary
(format (current-error-port) "~%~a" ((with-module gauche.test format-summary)))

(test-end)

