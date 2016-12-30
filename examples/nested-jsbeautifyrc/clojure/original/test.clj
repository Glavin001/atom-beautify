(ns     clojure.core.protocols)

(set! *warn-on-reflection* true)

(defprotocol CollReduce
                "Protocol for collection types that can implement reduce faster than
  first/next recursion. Called by clojure.core/reduce. Baseline
  implementation defined in terms of Iterable."
  (coll-reduce [coll f] [coll f val]))

(defprotocol
   InternalReduce
  "Protocol for concrete seq types that can reduce themselves
   faster than first/next recursion. Called by clojure.core/reduce."
           (internal-reduce [seq f start]))

(defn- seq-reduce
  ([coll f]
     (if-let      [s (seq coll)]
       (internal-reduce (next s) f (first s))
       (f)))
  ([coll f val]
     (let [s (seq coll)]
                 (internal-reduce s f val))))

(defn- iter-reduce
  ([^java.lang.Iterable coll f]

   (let [iter (.iterator coll)]
     (if (.hasNext iter)

       (loop [ret (.next iter)]
         (if (.hasNext iter)

           (let [ret (f ret (.next iter))]
             (if (reduced? ret)
               @ret
               (recur ret)))
           ret))
       (f))))

  ([^java.lang.Iterable coll f val]
   (let [iter (.iterator coll)]
     (loop [ret val]
       (if (.hasNext iter)
         (let [ret (f ret (.next iter))]
           (if (reduced? ret)
             @ret
             (recur ret)))
         ret)))))
