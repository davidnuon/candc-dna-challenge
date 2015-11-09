(ns dna.core
  (:gen-class))

(defn dnaT [x] 
	(case x 
		"a" "c"
		"g" "t"
		"t" "g"
		"c" "a")
)

(defn dnaInverse [sequence]
	(map dnaT (clojure.string/split sequence #""))
)

(defn -main
  [& args]
  (println 
  	( clojure.string/join "" (dnaInverse "acgt") )
  )
 )