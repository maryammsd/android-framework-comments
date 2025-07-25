graph [
  directed 1
  node [
    id 0
    label "java.util.List"
    type "class"
    comment ""
  ]
  node [
    id 1
    label " int size()"
    type "method"
    comment "&#10;     * Returns the number of elements in this list.  If this list contains&#10;     * more than {@code Integer.MAX_VALUE} elements, returns&#10;     * {@code Integer.MAX_VALUE}.&#10;     *&#10;     * @return the number of elements in this list&#10;     "
  ]
  node [
    id 2
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this list contains no elements.&#10;     *&#10;     * @return {@code true} if this list contains no elements&#10;     "
  ]
  node [
    id 3
    label " boolean contains(Object o)"
    type "method"
    comment "&#10;     * Returns {@code true} if this list contains the specified element.&#10;     * More formally, returns {@code true} if and only if this list contains&#10;     * at least one element {@code e} such that&#10;     * {@code Objects.equals(o, e)}.&#10;     *&#10;     * @param o element whose presence in this list is to be tested&#10;     * @return {@code true} if this list contains the specified element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this list&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         list does not permit null elements&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 4
    label " Iterator<E> iterator()"
    type "method"
    comment "&#10;     * Returns an iterator over the elements in this list in proper sequence.&#10;     *&#10;     * @return an iterator over the elements in this list in proper sequence&#10;     "
  ]
  node [
    id 5
    label " Object[] toArray()"
    type "method"
    comment "&#10;     * Returns an array containing all of the elements in this list in proper&#10;     * sequence (from first to last element).&#10;     *&#10;     * <p>The returned array will be &#34;safe&#34; in that no references to it are&#10;     * maintained by this list.  (In other words, this method must&#10;     * allocate a new array even if this list is backed by an array).&#10;     * The caller is thus free to modify the returned array.&#10;     *&#10;     * <p>This method acts as bridge between array-based and collection-based&#10;     * APIs.&#10;     *&#10;     * @return an array containing all of the elements in this list in proper&#10;     *         sequence&#10;     * @see Arrays#asList(Object[])&#10;     "
  ]
  node [
    id 6
    label " T[] toArray(T[] a)"
    type "method"
    comment "&#10;     * Returns an array containing all of the elements in this list in&#10;     * proper sequence (from first to last element); the runtime type of&#10;     * the returned array is that of the specified array.  If the list fits&#10;     * in the specified array, it is returned therein.  Otherwise, a new&#10;     * array is allocated with the runtime type of the specified array and&#10;     * the size of this list.&#10;     *&#10;     * <p>If the list fits in the specified array with room to spare (i.e.,&#10;     * the array has more elements than the list), the element in the array&#10;     * immediately following the end of the list is set to {@code null}.&#10;     * (This is useful in determining the length of the list <i>only</i> if&#10;     * the caller knows that the list does not contain any null elements.)&#10;     *&#10;     * <p>Like the {@link #toArray()} method, this method acts as bridge between&#10;     * array-based and collection-based APIs.  Further, this method allows&#10;     * precise control over the runtime type of the output array, and may,&#10;     * under certain circumstances, be used to save allocation costs.&#10;     *&#10;     * <p>Suppose {@code x} is a list known to contain only strings.&#10;     * The following code can be used to dump the list into a newly&#10;     * allocated array of {@code String}:&#10;     *&#10;     * <pre>{@code&#10;     *     String[] y = x.toArray(new String[0]);&#10;     * }</pre>&#10;     *&#10;     * Note that {@code toArray(new Object[0])} is identical in function to&#10;     * {@code toArray()}.&#10;     *&#10;     * @param a the array into which the elements of this list are to&#10;     *          be stored, if it is big enough; otherwise, a new array of the&#10;     *          same runtime type is allocated for this purpose.&#10;     * @return an array containing the elements of this list&#10;     * @throws ArrayStoreException if the runtime type of the specified array&#10;     *         is not a supertype of the runtime type of every element in&#10;     *         this list&#10;     * @throws NullPointerException if the specified array is null&#10;     "
  ]
  node [
    id 7
    label "toArray()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label " boolean add(E e)"
    type "method"
    comment "&#10;     * Appends the specified element to the end of this list (optional&#10;     * operation).&#10;     *&#10;     * <p>Lists that support this operation may place limitations on what&#10;     * elements may be added to this list.  In particular, some&#10;     * lists will refuse to add null elements, and others will impose&#10;     * restrictions on the type of elements that may be added.  List&#10;     * classes should clearly specify in their documentation any restrictions&#10;     * on what elements may be added.&#10;     *&#10;     * @param e element to be appended to this list&#10;     * @return {@code true} (as specified by {@link Collection#add})&#10;     * @throws UnsupportedOperationException if the {@code add} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of the specified element&#10;     *         prevents it from being added to this list&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         list does not permit null elements&#10;     * @throws IllegalArgumentException if some property of this element&#10;     *         prevents it from being added to this list&#10;     "
  ]
  node [
    id 9
    label "add"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 10
    label " boolean remove(Object o)"
    type "method"
    comment "&#10;     * Removes the first occurrence of the specified element from this list,&#10;     * if it is present (optional operation).  If this list does not contain&#10;     * the element, it is unchanged.  More formally, removes the element with&#10;     * the lowest index {@code i} such that&#10;     * {@code Objects.equals(o, get(i))}&#10;     * (if such an element exists).  Returns {@code true} if this list&#10;     * contained the specified element (or equivalently, if this list changed&#10;     * as a result of the call).&#10;     *&#10;     * @param o element to be removed from this list, if present&#10;     * @return {@code true} if this list contained the specified element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this list&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         list does not permit null elements&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this list&#10;     "
  ]
  node [
    id 11
    label " boolean containsAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Returns {@code true} if this list contains all of the elements of the&#10;     * specified collection.&#10;     *&#10;     * @param  c collection to be checked for containment in this list&#10;     * @return {@code true} if this list contains all of the elements of the&#10;     *         specified collection&#10;     * @throws ClassCastException if the types of one or more elements&#10;     *         in the specified collection are incompatible with this&#10;     *         list&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified collection contains one&#10;     *         or more null elements and this list does not permit null&#10;     *         elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see #contains(Object)&#10;     "
  ]
  node [
    id 12
    label " boolean addAll(Collection<? extends E> c)"
    type "method"
    comment "&#10;     * Appends all of the elements in the specified collection to the end of&#10;     * this list, in the order that they are returned by the specified&#10;     * collection's iterator (optional operation).  The behavior of this&#10;     * operation is undefined if the specified collection is modified while&#10;     * the operation is in progress.  (Note that this will occur if the&#10;     * specified collection is this list, and it's nonempty.)&#10;     *&#10;     * @param c collection containing elements to be added to this list&#10;     * @return {@code true} if this list changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code addAll} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of an element of the specified&#10;     *         collection prevents it from being added to this list&#10;     * @throws NullPointerException if the specified collection contains one&#10;     *         or more null elements and this list does not permit null&#10;     *         elements, or if the specified collection is null&#10;     * @throws IllegalArgumentException if some property of an element of the&#10;     *         specified collection prevents it from being added to this list&#10;     * @see #add(Object)&#10;     "
  ]
  node [
    id 13
    label " boolean addAll(int index, Collection<? extends E> c)"
    type "method"
    comment "&#10;     * Inserts all of the elements in the specified collection into this&#10;     * list at the specified position (optional operation).  Shifts the&#10;     * element currently at that position (if any) and any subsequent&#10;     * elements to the right (increases their indices).  The new elements&#10;     * will appear in this list in the order that they are returned by the&#10;     * specified collection's iterator.  The behavior of this operation is&#10;     * undefined if the specified collection is modified while the&#10;     * operation is in progress.  (Note that this will occur if the specified&#10;     * collection is this list, and it's nonempty.)&#10;     *&#10;     * @param index index at which to insert the first element from the&#10;     *              specified collection&#10;     * @param c collection containing elements to be added to this list&#10;     * @return {@code true} if this list changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code addAll} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of an element of the specified&#10;     *         collection prevents it from being added to this list&#10;     * @throws NullPointerException if the specified collection contains one&#10;     *         or more null elements and this list does not permit null&#10;     *         elements, or if the specified collection is null&#10;     * @throws IllegalArgumentException if some property of an element of the&#10;     *         specified collection prevents it from being added to this list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index > size()})&#10;     "
  ]
  node [
    id 14
    label " boolean removeAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Removes from this list all of its elements that are contained in the&#10;     * specified collection (optional operation).&#10;     *&#10;     * @param c collection containing elements to be removed from this list&#10;     * @return {@code true} if this list changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code removeAll} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of an element of this list&#10;     *         is incompatible with the specified collection&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if this list contains a null element and the&#10;     *         specified collection does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see #remove(Object)&#10;     * @see #contains(Object)&#10;     "
  ]
  node [
    id 15
    label " boolean retainAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Retains only the elements in this list that are contained in the&#10;     * specified collection (optional operation).  In other words, removes&#10;     * from this list all of its elements that are not contained in the&#10;     * specified collection.&#10;     *&#10;     * @param c collection containing elements to be retained in this list&#10;     * @return {@code true} if this list changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code retainAll} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of an element of this list&#10;     *         is incompatible with the specified collection&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if this list contains a null element and the&#10;     *         specified collection does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see #remove(Object)&#10;     * @see #contains(Object)&#10;     "
  ]
  node [
    id 16
    label " void replaceAll(UnaryOperator<E> operator)"
    type "method"
    comment "&#10;     * Replaces each element of this list with the result of applying the&#10;     * operator to that element.  Errors or runtime exceptions thrown by&#10;     * the operator are relayed to the caller.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to, for this {@code list}:&#10;     * <pre>{@code&#10;     *     final ListIterator<E> li = list.listIterator();&#10;     *     while (li.hasNext()) {&#10;     *         li.set(operator.apply(li.next()));&#10;     *     }&#10;     * }</pre>&#10;     *&#10;     * If the list's list-iterator does not support the {@code set} operation&#10;     * then an {@code UnsupportedOperationException} will be thrown when&#10;     * replacing the first element.&#10;     *&#10;     * @param operator the operator to apply to each element&#10;     * @throws UnsupportedOperationException if this list is unmodifiable.&#10;     *         Implementations may throw this exception if an element&#10;     *         cannot be replaced or if, in general, modification is not&#10;     *         supported&#10;     * @throws NullPointerException if the specified operator is null or&#10;     *         if the operator result is a null value and this list does&#10;     *         not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 17
    label " void sort(Comparator<? super E> c)"
    type "method"
    comment "&#10;     * Sorts this list according to the order induced by the specified&#10;     * {@link Comparator}.&#10;     *&#10;     * <p>All elements in this list must be <i>mutually comparable</i> using the&#10;     * specified comparator (that is, {@code c.compare(e1, e2)} must not throw&#10;     * a {@code ClassCastException} for any elements {@code e1} and {@code e2}&#10;     * in the list).&#10;     *&#10;     * <p>If the specified comparator is {@code null} then all elements in this&#10;     * list must implement the {@link Comparable} interface and the elements'&#10;     * {@linkplain Comparable natural ordering} should be used.&#10;     *&#10;     * <p>This list must be modifiable, but need not be resizable.&#10;     *&#10;     * <p>For apps running on and targeting Android versions greater than&#10;     * Nougat (API level {@code > 25}), {@link Collections#sort(List)}&#10;     * delegates to this method. Such apps must not call&#10;     * {@link Collections#sort(List)} from this method. Instead, prefer&#10;     * not overriding this method at all. If you must override it, consider&#10;     * this implementation:&#10;     * <pre>&#10;     * &#38;#064;Override&#10;     * public void sort(Comparator&#38;lt;? super E&#38;gt; c) {&#10;     *   Object[] elements = toArray();&#10;     *   Arrays.sort(elements, c);&#10;     *   ListIterator&#38;lt;E&#38;gt; iterator = (ListIterator&#38;lt;Object&#38;gt;) listIterator();&#10;     *   for (Object element : elements) {&#10;     *     iterator.next();&#10;     *     iterator.set((E) element);&#10;     *   }&#10;     * }&#10;     * </pre>&#10;     *&#10;     * @implSpec&#10;     * The default implementation obtains an array containing all elements in&#10;     * this list, sorts the array, and iterates over this list resetting each&#10;     * element from the corresponding position in the array. (This avoids the&#10;     * n<sup>2</sup> log(n) performance that would result from attempting&#10;     * to sort a linked list in place.)&#10;     *&#10;     * @implNote&#10;     * This implementation is a stable, adaptive, iterative mergesort that&#10;     * requires far fewer than n lg(n) comparisons when the input array is&#10;     * partially sorted, while offering the performance of a traditional&#10;     * mergesort when the input array is randomly ordered.  If the input array&#10;     * is nearly sorted, the implementation requires approximately n&#10;     * comparisons.  Temporary storage requirements vary from a small constant&#10;     * for nearly sorted input arrays to n/2 object references for randomly&#10;     * ordered input arrays.&#10;     *&#10;     * <p>The implementation takes equal advantage of ascending and&#10;     * descending order in its input array, and can take advantage of&#10;     * ascending and descending order in different parts of the same&#10;     * input array.  It is well-suited to merging two or more sorted arrays:&#10;     * simply concatenate the arrays and sort the resulting array.&#10;     *&#10;     * <p>The implementation was adapted from Tim Peters's list sort for Python&#10;     * (<a href=&#34;http://svn.python.org/projects/python/trunk/Objects/listsort.txt&#34;>&#10;     * TimSort</a>).  It uses techniques from Peter McIlroy's &#34;Optimistic&#10;     * Sorting and Information Theoretic Complexity&#34;, in Proceedings of the&#10;     * Fourth Annual ACM-SIAM Symposium on Discrete Algorithms, pp 467-474,&#10;     * January 1993.&#10;     *&#10;     * @param c the {@code Comparator} used to compare list elements.&#10;     *          A {@code null} value indicates that the elements'&#10;     *          {@linkplain Comparable natural ordering} should be used&#10;     * @throws ClassCastException if the list contains elements that are not&#10;     *         <i>mutually comparable</i> using the specified comparator&#10;     * @throws UnsupportedOperationException if the list's list-iterator does&#10;     *         not support the {@code set} operation&#10;     * @throws IllegalArgumentException&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     *         if the comparator is found to violate the {@link Comparator}&#10;     *         contract&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 18
    label "Comparable"
  ]
  node [
    id 19
    label "sort(List)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 20
    label "Comparator"
  ]
  node [
    id 21
    label " void clear()"
    type "method"
    comment "&#10;     * Removes all of the elements from this list (optional operation).&#10;     * The list will be empty after this call returns.&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code clear} operation&#10;     *         is not supported by this list&#10;     "
  ]
  node [
    id 22
    label " boolean equals(Object o)"
    type "method"
    comment "&#10;     * Compares the specified object with this list for equality.  Returns&#10;     * {@code true} if and only if the specified object is also a list, both&#10;     * lists have the same size, and all corresponding pairs of elements in&#10;     * the two lists are <i>equal</i>.  (Two elements {@code e1} and&#10;     * {@code e2} are <i>equal</i> if {@code Objects.equals(e1, e2)}.)&#10;     * In other words, two lists are defined to be&#10;     * equal if they contain the same elements in the same order.  This&#10;     * definition ensures that the equals method works properly across&#10;     * different implementations of the {@code List} interface.&#10;     *&#10;     * @param o the object to be compared for equality with this list&#10;     * @return {@code true} if the specified object is equal to this list&#10;     "
  ]
  node [
    id 23
    label " int hashCode()"
    type "method"
    comment "&#10;     * Returns the hash code value for this list.  The hash code of a list&#10;     * is defined to be the result of the following calculation:&#10;     * <pre>{@code&#10;     *     int hashCode = 1;&#10;     *     for (E e : list)&#10;     *         hashCode = 31*hashCode + (e==null ? 0 : e.hashCode());&#10;     * }</pre>&#10;     * This ensures that {@code list1.equals(list2)} implies that&#10;     * {@code list1.hashCode()==list2.hashCode()} for any two lists,&#10;     * {@code list1} and {@code list2}, as required by the general&#10;     * contract of {@link Object#hashCode}.&#10;     *&#10;     * @return the hash code value for this list&#10;     * @see Object#equals(Object)&#10;     * @see #equals(Object)&#10;     "
  ]
  node [
    id 24
    label "hashCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 25
    label " E get(int index)"
    type "method"
    comment "&#10;     * Returns the element at the specified position in this list.&#10;     *&#10;     * @param index index of the element to return&#10;     * @return the element at the specified position in this list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index >= size()})&#10;     "
  ]
  node [
    id 26
    label " E set(int index, E element)"
    type "method"
    comment "&#10;     * Replaces the element at the specified position in this list with the&#10;     * specified element (optional operation).&#10;     *&#10;     * @param index index of the element to replace&#10;     * @param element element to be stored at the specified position&#10;     * @return the element previously at the specified position&#10;     * @throws UnsupportedOperationException if the {@code set} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of the specified element&#10;     *         prevents it from being added to this list&#10;     * @throws NullPointerException if the specified element is null and&#10;     *         this list does not permit null elements&#10;     * @throws IllegalArgumentException if some property of the specified&#10;     *         element prevents it from being added to this list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index >= size()})&#10;     "
  ]
  node [
    id 27
    label " void add(int index, E element)"
    type "method"
    comment "&#10;     * Inserts the specified element at the specified position in this list&#10;     * (optional operation).  Shifts the element currently at that position&#10;     * (if any) and any subsequent elements to the right (adds one to their&#10;     * indices).&#10;     *&#10;     * @param index index at which the specified element is to be inserted&#10;     * @param element element to be inserted&#10;     * @throws UnsupportedOperationException if the {@code add} operation&#10;     *         is not supported by this list&#10;     * @throws ClassCastException if the class of the specified element&#10;     *         prevents it from being added to this list&#10;     * @throws NullPointerException if the specified element is null and&#10;     *         this list does not permit null elements&#10;     * @throws IllegalArgumentException if some property of the specified&#10;     *         element prevents it from being added to this list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index > size()})&#10;     "
  ]
  node [
    id 28
    label " E remove(int index)"
    type "method"
    comment "&#10;     * Removes the element at the specified position in this list (optional&#10;     * operation).  Shifts any subsequent elements to the left (subtracts one&#10;     * from their indices).  Returns the element that was removed from the&#10;     * list.&#10;     *&#10;     * @param index the index of the element to be removed&#10;     * @return the element previously at the specified position&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index >= size()})&#10;     "
  ]
  node [
    id 29
    label " int indexOf(Object o)"
    type "method"
    comment "&#10;     * Returns the index of the first occurrence of the specified element&#10;     * in this list, or -1 if this list does not contain the element.&#10;     * More formally, returns the lowest index {@code i} such that&#10;     * {@code Objects.equals(o, get(i))},&#10;     * or -1 if there is no such index.&#10;     *&#10;     * @param o element to search for&#10;     * @return the index of the first occurrence of the specified element in&#10;     *         this list, or -1 if this list does not contain the element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this list&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         list does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 30
    label " int lastIndexOf(Object o)"
    type "method"
    comment "&#10;     * Returns the index of the last occurrence of the specified element&#10;     * in this list, or -1 if this list does not contain the element.&#10;     * More formally, returns the highest index {@code i} such that&#10;     * {@code Objects.equals(o, get(i))},&#10;     * or -1 if there is no such index.&#10;     *&#10;     * @param o element to search for&#10;     * @return the index of the last occurrence of the specified element in&#10;     *         this list, or -1 if this list does not contain the element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this list&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         list does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 31
    label " ListIterator<E> listIterator()"
    type "method"
    comment "&#10;     * Returns a list iterator over the elements in this list (in proper&#10;     * sequence).&#10;     *&#10;     * @return a list iterator over the elements in this list (in proper&#10;     *         sequence)&#10;     "
  ]
  node [
    id 32
    label " ListIterator<E> listIterator(int index)"
    type "method"
    comment "&#10;     * Returns a list iterator over the elements in this list (in proper&#10;     * sequence), starting at the specified position in the list.&#10;     * The specified index indicates the first element that would be&#10;     * returned by an initial call to {@link ListIterator#next next}.&#10;     * An initial call to {@link ListIterator#previous previous} would&#10;     * return the element with the specified index minus one.&#10;     *&#10;     * @param index index of the first element to be returned from the&#10;     *        list iterator (by a call to {@link ListIterator#next next})&#10;     * @return a list iterator over the elements in this list (in proper&#10;     *         sequence), starting at the specified position in the list&#10;     * @throws IndexOutOfBoundsException if the index is out of range&#10;     *         ({@code index < 0 || index > size()})&#10;     "
  ]
  node [
    id 33
    label "previous"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 34
    label "next"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 35
    label " List<E> subList(int fromIndex, int toIndex)"
    type "method"
    comment "&#10;     * Returns a view of the portion of this list between the specified&#10;     * {@code fromIndex}, inclusive, and {@code toIndex}, exclusive.  (If&#10;     * {@code fromIndex} and {@code toIndex} are equal, the returned list is&#10;     * empty.)  The returned list is backed by this list, so non-structural&#10;     * changes in the returned list are reflected in this list, and vice-versa.&#10;     * The returned list supports all of the optional list operations supported&#10;     * by this list.<p>&#10;     *&#10;     * This method eliminates the need for explicit range operations (of&#10;     * the sort that commonly exist for arrays).  Any operation that expects&#10;     * a list can be used as a range operation by passing a subList view&#10;     * instead of a whole list.  For example, the following idiom&#10;     * removes a range of elements from a list:&#10;     * <pre>{@code&#10;     *      list.subList(from, to).clear();&#10;     * }</pre>&#10;     * Similar idioms may be constructed for {@code indexOf} and&#10;     * {@code lastIndexOf}, and all of the algorithms in the&#10;     * {@code Collections} class can be applied to a subList.<p>&#10;     *&#10;     * The semantics of the list returned by this method become undefined if&#10;     * the backing list (i.e., this list) is <i>structurally modified</i> in&#10;     * any way other than via the returned list.  (Structural modifications are&#10;     * those that change the size of this list, or otherwise perturb it in such&#10;     * a fashion that iterations in progress may yield incorrect results.)&#10;     *&#10;     * @param fromIndex low endpoint (inclusive) of the subList&#10;     * @param toIndex high endpoint (exclusive) of the subList&#10;     * @return a view of the specified range within this list&#10;     * @throws IndexOutOfBoundsException for an illegal endpoint index value&#10;     *         ({@code fromIndex < 0 || toIndex > size ||&#10;     *         fromIndex > toIndex})&#10;     "
  ]
  node [
    id 36
    label " Spliterator<E> spliterator()"
    type "method"
    comment "&#10;     * Creates a {@link Spliterator} over the elements in this list.&#10;     *&#10;     * <p>The {@code Spliterator} reports {@link Spliterator#SIZED} and&#10;     * {@link Spliterator#ORDERED}.  Implementations should document the&#10;     * reporting of additional characteristic values.&#10;     *&#10;     * @implSpec&#10;     * The default implementation creates a&#10;     * <em><a href=&#34;Spliterator.html#binding&#34;>late-binding</a></em>&#10;     * spliterator as follows:&#10;     * <ul>&#10;     * <li>If the list is an instance of {@link RandomAccess} then the default&#10;     *     implementation creates a spliterator that traverses elements by&#10;     *     invoking the method {@link List#get}.  If such invocation results or&#10;     *     would result in an {@code IndexOutOfBoundsException} then the&#10;     *     spliterator will <em>fail-fast</em> and throw a&#10;     *     {@code ConcurrentModificationException}.&#10;     *     If the list is also an instance of {@link AbstractList} then the&#10;     *     spliterator will use the list's {@link AbstractList#modCount modCount}&#10;     *     field to provide additional <em>fail-fast</em> behavior.&#10;     * <li>Otherwise, the default implementation creates a spliterator from the&#10;     *     list's {@code Iterator}.  The spliterator inherits the&#10;     *     <em>fail-fast</em> of the list's iterator.&#10;     * </ul>&#10;     *&#10;     * @implNote&#10;     * The created {@code Spliterator} additionally reports&#10;     * {@link Spliterator#SUBSIZED}.&#10;     *&#10;     * @return a {@code Spliterator} over the elements in this list&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 37
    label "AbstractList"
  ]
  node [
    id 38
    label "get"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 39
    label "SUBSIZED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 40
    label "modCount"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 41
    label "RandomAccess"
  ]
  node [
    id 42
    label "ORDERED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 43
    label "SIZED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 44
    label "Spliterator"
  ]
  node [
    id 45
    label " void addFirst(E e)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * The implementation in this interface calls {@code add(0, e)}.&#10;     *&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 46
    label " void addLast(E e)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * The implementation in this interface calls {@code add(e)}.&#10;     *&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 47
    label " E getFirst()"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * If this List is not empty, the implementation in this interface returns the result&#10;     * of calling {@code get(0)}. Otherwise, it throws {@code NoSuchElementException}.&#10;     *&#10;     * @throws NoSuchElementException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 48
    label " E getLast()"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * If this List is not empty, the implementation in this interface returns the result&#10;     * of calling {@code get(size() - 1)}. Otherwise, it throws {@code NoSuchElementException}.&#10;     *&#10;     * @throws NoSuchElementException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 49
    label " E removeFirst()"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * If this List is not empty, the implementation in this interface returns the result&#10;     * of calling {@code remove(0)}. Otherwise, it throws {@code NoSuchElementException}.&#10;     *&#10;     * @throws NoSuchElementException {@inheritDoc}&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 50
    label " E removeLast()"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * If this List is not empty, the implementation in this interface returns the result&#10;     * of calling {@code remove(size() - 1)}. Otherwise, it throws {@code NoSuchElementException}.&#10;     *&#10;     * @throws NoSuchElementException {@inheritDoc}&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @since 21&#10;     "
  ]
  node [
    id 51
    label " List<E> reversed()"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * The implementation in this interface returns a reverse-ordered List&#10;     * view. The {@code reversed()} method of the view returns a reference&#10;     * to this List. Other operations on the view are implemented via calls to&#10;     * public methods on this List. The exact relationship between calls on the&#10;     * view and calls on this List is unspecified. However, order-sensitive&#10;     * operations generally delegate to the appropriate method with the opposite&#10;     * orientation. For example, calling {@code getFirst} on the view results in&#10;     * a call to {@code getLast} on this List.&#10;     *&#10;     * @return a reverse-ordered view of this collection, as a {@code List}&#10;     * @since 21&#10;     "
  ]
  node [
    id 52
    label " static List<E> of()"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing zero elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @return an empty {@code List}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 53
    label " static List<E> of(E e1)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing one element.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the single element&#10;     * @return a {@code List} containing the specified element&#10;     * @throws NullPointerException if the element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 54
    label " static List<E> of(E e1, E e2)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing two elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 55
    label " static List<E> of(E e1, E e2, E e3)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing three elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 56
    label " static List<E> of(E e1, E e2, E e3, E e4)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing four elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 57
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing five elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 58
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5, E e6)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing six elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 59
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing seven elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 60
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing eight elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 61
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing nine elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @param e9 the ninth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 62
    label " static List<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing ten elements.&#10;     *&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @param e9 the ninth element&#10;     * @param e10 the tenth element&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 63
    label " static List<E> of(E... elements)"
    type "method"
    comment "&#10;     * Returns an unmodifiable list containing an arbitrary number of elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Lists</a> for details.&#10;     *&#10;     * @apiNote&#10;     * This method also accepts a single array as an argument. The element type of&#10;     * the resulting list will be the component type of the array, and the size of&#10;     * the list will be equal to the length of the array. To create a list with&#10;     * a single element that is an array, do the following:&#10;     *&#10;     * <pre>{@code&#10;     *     String[] array = ... ;&#10;     *     List<String[]> list = List.<String[]>of(array);&#10;     * }</pre>&#10;     *&#10;     * This will cause the {@link List#of(Object) List.of(E)} method&#10;     * to be invoked instead.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param elements the elements to be contained in the list&#10;     * @return a {@code List} containing the specified elements&#10;     * @throws NullPointerException if an element is {@code null} or if the array is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 64
    label "of(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 65
    label " static List<E> copyOf(Collection<? extends E> coll)"
    type "method"
    comment "&#10;     * Returns an <a href=&#34;#unmodifiable&#34;>unmodifiable List</a> containing the elements of&#10;     * the given Collection, in its iteration order. The given Collection must not be null,&#10;     * and it must not contain any null elements. If the given Collection is subsequently&#10;     * modified, the returned List will not reflect such modifications.&#10;     *&#10;     * @implNote&#10;     * If the given Collection is an <a href=&#34;#unmodifiable&#34;>unmodifiable List</a>,&#10;     * calling copyOf will generally not create a copy.&#10;     *&#10;     * @param <E> the {@code List}'s element type&#10;     * @param coll a {@code Collection} from which elements are drawn, must be non-null&#10;     * @return a {@code List} containing the elements of the given {@code Collection}&#10;     * @throws NullPointerException if coll is null, or if it contains any nulls&#10;     * @since 10&#10;     "
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 2
    type "child"
  ]
  edge [
    source 0
    target 3
    type "child"
  ]
  edge [
    source 0
    target 4
    type "child"
  ]
  edge [
    source 0
    target 5
    type "child"
  ]
  edge [
    source 0
    target 6
    type "child"
  ]
  edge [
    source 0
    target 8
    type "child"
  ]
  edge [
    source 0
    target 10
    type "child"
  ]
  edge [
    source 0
    target 11
    type "child"
  ]
  edge [
    source 0
    target 12
    type "child"
  ]
  edge [
    source 0
    target 13
    type "child"
  ]
  edge [
    source 0
    target 14
    type "child"
  ]
  edge [
    source 0
    target 15
    type "child"
  ]
  edge [
    source 0
    target 16
    type "child"
  ]
  edge [
    source 0
    target 17
    type "child"
  ]
  edge [
    source 0
    target 21
    type "child"
  ]
  edge [
    source 0
    target 22
    type "child"
  ]
  edge [
    source 0
    target 23
    type "child"
  ]
  edge [
    source 0
    target 25
    type "child"
  ]
  edge [
    source 0
    target 26
    type "child"
  ]
  edge [
    source 0
    target 27
    type "child"
  ]
  edge [
    source 0
    target 28
    type "child"
  ]
  edge [
    source 0
    target 29
    type "child"
  ]
  edge [
    source 0
    target 30
    type "child"
  ]
  edge [
    source 0
    target 31
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 35
    type "child"
  ]
  edge [
    source 0
    target 36
    type "child"
  ]
  edge [
    source 0
    target 45
    type "child"
  ]
  edge [
    source 0
    target 46
    type "child"
  ]
  edge [
    source 0
    target 47
    type "child"
  ]
  edge [
    source 0
    target 48
    type "child"
  ]
  edge [
    source 0
    target 49
    type "child"
  ]
  edge [
    source 0
    target 50
    type "child"
  ]
  edge [
    source 0
    target 51
    type "child"
  ]
  edge [
    source 0
    target 52
    type "child"
  ]
  edge [
    source 0
    target 53
    type "child"
  ]
  edge [
    source 0
    target 54
    type "child"
  ]
  edge [
    source 0
    target 55
    type "child"
  ]
  edge [
    source 0
    target 56
    type "child"
  ]
  edge [
    source 0
    target 57
    type "child"
  ]
  edge [
    source 0
    target 58
    type "child"
  ]
  edge [
    source 0
    target 59
    type "child"
  ]
  edge [
    source 0
    target 60
    type "child"
  ]
  edge [
    source 0
    target 61
    type "child"
  ]
  edge [
    source 0
    target 62
    type "child"
  ]
  edge [
    source 0
    target 63
    type "child"
  ]
  edge [
    source 0
    target 65
    type "child"
  ]
  edge [
    source 6
    target 7
    type "link"
  ]
  edge [
    source 8
    target 9
    type "link"
  ]
  edge [
    source 17
    target 18
    type "link"
  ]
  edge [
    source 17
    target 19
    type "link"
  ]
  edge [
    source 17
    target 20
    type "link"
  ]
  edge [
    source 23
    target 24
    type "link"
  ]
  edge [
    source 32
    target 33
    type "link"
  ]
  edge [
    source 32
    target 34
    type "link"
  ]
  edge [
    source 36
    target 37
    type "link"
  ]
  edge [
    source 36
    target 38
    type "link"
  ]
  edge [
    source 36
    target 39
    type "link"
  ]
  edge [
    source 36
    target 40
    type "link"
  ]
  edge [
    source 36
    target 41
    type "link"
  ]
  edge [
    source 36
    target 42
    type "link"
  ]
  edge [
    source 36
    target 43
    type "link"
  ]
  edge [
    source 36
    target 44
    type "link"
  ]
  edge [
    source 63
    target 64
    type "link"
  ]
]
