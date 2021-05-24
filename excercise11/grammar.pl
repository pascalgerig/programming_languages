article --> [a].
article --> [the].
noun --> [girl].
noun --> [boy].
pronoun --> [that].
pronoun --> [this].
auxiliary --> [is].
verb --> [sleeps].
verb --> [likes].

subject --> article, noun.
subject --> pronoun.
predicate --> auxiliary.
predicate --> verb.
object --> article, noun.

subjectpredicateobject --> (article, noun), [likes], object.
subjectpredicateobject --> pronoun, auxiliary, object.
subjectpredicate --> subject, [sleeps].

sentence --> subjectpredicateobject.
sentence --> subjectpredicate.

%usage: phrase(sentence, YOUR_SENTENCE_AS_LIST_HERE)
%e.g. phrase(sentence, [the, girl, likes, a, girl]) -> true