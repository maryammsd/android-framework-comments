graph [
  directed 1
  node [
    id 0
    label "java.util.Date"
    type "class"
    comment "&#10; * The class {@code Date} represents a specific instant&#10; * in time, with millisecond precision.&#10; * <p>&#10; * Prior to JDK&#38;nbsp;1.1, the class {@code Date} had two additional&#10; * functions.  It allowed the interpretation of dates as year, month, day, hour,&#10; * minute, and second values.  It also allowed the formatting and parsing&#10; * of date strings.  Unfortunately, the API for these functions was not&#10; * amenable to internationalization.  As of JDK&#38;nbsp;1.1, the&#10; * {@code Calendar} class should be used to convert between dates and time&#10; * fields and the {@code DateFormat} class should be used to format and&#10; * parse date strings.&#10; * The corresponding methods in {@code Date} are deprecated.&#10; * <p>&#10; * Although the {@code Date} class is intended to reflect&#10; * coordinated universal time (UTC), it may not do so exactly,&#10; * depending on the host environment of the Java Virtual Machine.&#10; * Nearly all modern operating systems assume that 1&#38;nbsp;day&#38;nbsp;=&#10; * 24&#38;nbsp;&#38;times;&#38;nbsp;60&#38;nbsp;&#38;times;&#38;nbsp;60&#38;nbsp;= 86400 seconds&#10; * in all cases. In UTC, however, about once every year or two there&#10; * is an extra second, called a &#34;leap second.&#34; The leap&#10; * second is always added as the last second of the day, and always&#10; * on December 31 or June 30. For example, the last minute of the&#10; * year 1995 was 61 seconds long, thanks to an added leap second.&#10; * Most computer clocks are not accurate enough to be able to reflect&#10; * the leap-second distinction.&#10; * <p>&#10; * Some computer standards are defined in terms of Greenwich mean&#10; * time (GMT), which is equivalent to universal time (UT).  GMT is&#10; * the &#34;civil&#34; name for the standard; UT is the&#10; * &#34;scientific&#34; name for the same standard. The&#10; * distinction between UTC and UT is that UTC is based on an atomic&#10; * clock and UT is based on astronomical observations, which for all&#10; * practical purposes is an invisibly fine hair to split. Because the&#10; * earth's rotation is not uniform (it slows down and speeds up&#10; * in complicated ways), UT does not always flow uniformly. Leap&#10; * seconds are introduced as needed into UTC so as to keep UTC within&#10; * 0.9 seconds of UT1, which is a version of UT with certain&#10; * corrections applied. There are other time and date systems as&#10; * well; for example, the time scale used by the satellite-based&#10; * global positioning system (GPS) is synchronized to UTC but is&#10; * <i>not</i> adjusted for leap seconds. An interesting source of&#10; * further information is the United States Naval Observatory (USNO):&#10; * <blockquote><pre>&#10; *     <a href=&#34;https://www.usno.navy.mil/USNO&#34;>https://www.usno.navy.mil/USNO</a>&#10; * </pre></blockquote>&#10; * <p>&#10; * and the material regarding &#34;Systems of Time&#34; at:&#10; * <blockquote><pre>&#10; *     <a href=&#34;https://www.usno.navy.mil/USNO/time/master-clock/systems-of-time&#34;>https://www.usno.navy.mil/USNO/time/master-clock/systems-of-time</a>&#10; * </pre></blockquote>&#10; * <p>&#10; * which has descriptions of various different time systems including&#10; * UT, UT1, and UTC.&#10; * <p>&#10; * In all methods of class {@code Date} that accept or return&#10; * year, month, date, hours, minutes, and seconds values, the&#10; * following representations are used:&#10; * <ul>&#10; * <li>A year <i>y</i> is represented by the integer&#10; *     <i>y</i>&#38;nbsp;{@code - 1900}.&#10; * <li>A month is represented by an integer from 0 to 11; 0 is January,&#10; *     1 is February, and so forth; thus 11 is December.&#10; * <li>A date (day of month) is represented by an integer from 1 to 31&#10; *     in the usual manner.&#10; * <li>An hour is represented by an integer from 0 to 23. Thus, the hour&#10; *     from midnight to 1 a.m. is hour 0, and the hour from noon to 1&#10; *     p.m. is hour 12.&#10; * <li>A minute is represented by an integer from 0 to 59 in the usual manner.&#10; * <li>A second is represented by an integer from 0 to 61; the values 60 and&#10; *     61 occur only for leap seconds and even then only in Java&#10; *     implementations that actually track leap seconds correctly. Because&#10; *     of the manner in which leap seconds are currently introduced, it is&#10; *     extremely unlikely that two leap seconds will occur in the same&#10; *     minute, but this specification follows the date and time conventions&#10; *     for ISO C.&#10; * </ul>&#10; * <p>&#10; * In all cases, arguments given to methods for these purposes need&#10; * not fall within the indicated ranges; for example, a date may be&#10; * specified as January 32 and is interpreted as meaning February 1.&#10; *&#10; * @author  James Gosling&#10; * @author  Arthur van Hoff&#10; * @author  Alan Liu&#10; * @see     java.text.DateFormat&#10; * @see     java.util.Calendar&#10; * @see     java.util.TimeZone&#10; * @since   1.0&#10; "
  ]
  node [
    id 1
    label "public Object clone()"
    type "method"
    comment "&#10;     * Return a copy of this object.&#10;     "
  ]
  node [
    id 2
    label "public long getTime()"
    type "method"
    comment "&#10;     * Returns the number of milliseconds since January 1, 1970, 00:00:00 GMT&#10;     * represented by this {@code Date} object.&#10;     *&#10;     * @return  the number of milliseconds since January 1, 1970, 00:00:00 GMT&#10;     *          represented by this date.&#10;     "
  ]
  node [
    id 3
    label "public void setTime(long time)"
    type "method"
    comment "&#10;     * Sets this {@code Date} object to represent a point in time that is&#10;     * {@code time} milliseconds after January 1, 1970 00:00:00 GMT.&#10;     *&#10;     * @param   time   the number of milliseconds.&#10;     "
  ]
  node [
    id 4
    label "public boolean before(Date when)"
    type "method"
    comment "&#10;     * Tests if this date is before the specified date.&#10;     *&#10;     * @param   when   a date.&#10;     * @return  {@code true} if and only if the instant of time&#10;     *            represented by this {@code Date} object is strictly&#10;     *            earlier than the instant represented by {@code when};&#10;     *          {@code false} otherwise.&#10;     * @throws    NullPointerException if {@code when} is null.&#10;     "
  ]
  node [
    id 5
    label "public boolean after(Date when)"
    type "method"
    comment "&#10;     * Tests if this date is after the specified date.&#10;     *&#10;     * @param   when   a date.&#10;     * @return  {@code true} if and only if the instant represented&#10;     *          by this {@code Date} object is strictly later than the&#10;     *          instant represented by {@code when};&#10;     *          {@code false} otherwise.&#10;     * @throws    NullPointerException if {@code when} is null.&#10;     "
  ]
  node [
    id 6
    label "public boolean equals(Object obj)"
    type "method"
    comment "&#10;     * Compares two dates for equality.&#10;     * The result is {@code true} if and only if the argument is&#10;     * not {@code null} and is a {@code Date} object that&#10;     * represents the same point in time, to the millisecond, as this object.&#10;     * <p>&#10;     * Thus, two {@code Date} objects are equal if and only if the&#10;     * {@code getTime} method returns the same {@code long}&#10;     * value for both.&#10;     *&#10;     * @param   obj   the object to compare with.&#10;     * @return  {@code true} if the objects are the same;&#10;     *          {@code false} otherwise.&#10;     * @see     java.util.Date#getTime()&#10;     "
  ]
  node [
    id 7
    label " static final long getMillisOf(Date date)"
    type "method"
    comment "&#10;     * Returns the millisecond value of this {@code Date} object&#10;     * without affecting its internal state.&#10;     "
  ]
  node [
    id 8
    label "public int compareTo(Date anotherDate)"
    type "method"
    comment "&#10;     * Compares two Dates for ordering.&#10;     *&#10;     * @param   anotherDate   the {@code Date} to be compared.&#10;     * @return  the value {@code 0} if the argument Date is equal to&#10;     *          this Date; a value less than {@code 0} if this Date&#10;     *          is before the Date argument; and a value greater than&#10;     *      {@code 0} if this Date is after the Date argument.&#10;     * @since   1.2&#10;     * @throws    NullPointerException if {@code anotherDate} is null.&#10;     "
  ]
  node [
    id 9
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns a hash code value for this object. The result is the&#10;     * exclusive OR of the two halves of the primitive {@code long}&#10;     * value returned by the {@link Date#getTime}&#10;     * method. That is, the hash code is the value of the expression:&#10;     * <blockquote><pre>{@code&#10;     * (int)(this.getTime()^(this.getTime() >>> 32))&#10;     * }</pre></blockquote>&#10;     *&#10;     * @return  a hash code value for this object.&#10;     "
  ]
  node [
    id 10
    label "getTime"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 11
    label "public String toString()"
    type "method"
    comment "&#10;     * Converts this {@code Date} object to a {@code String}&#10;     * of the form:&#10;     * <blockquote><pre>&#10;     * dow mon dd hh:mm:ss zzz yyyy</pre></blockquote>&#10;     * where:<ul>&#10;     * <li>{@code dow} is the day of the week ({@code Sun, Mon, Tue, Wed,&#10;     *     Thu, Fri, Sat}).&#10;     * <li>{@code mon} is the month ({@code Jan, Feb, Mar, Apr, May, Jun,&#10;     *     Jul, Aug, Sep, Oct, Nov, Dec}).&#10;     * <li>{@code dd} is the day of the month ({@code 01} through&#10;     *     {@code 31}), as two decimal digits.&#10;     * <li>{@code hh} is the hour of the day ({@code 00} through&#10;     *     {@code 23}), as two decimal digits.&#10;     * <li>{@code mm} is the minute within the hour ({@code 00} through&#10;     *     {@code 59}), as two decimal digits.&#10;     * <li>{@code ss} is the second within the minute ({@code 00} through&#10;     *     {@code 61}, as two decimal digits.&#10;     * <li>{@code zzz} is the time zone (and may reflect daylight saving&#10;     *     time). Standard time zone abbreviations include those&#10;     *     recognized by the method {@code parse}. If time zone&#10;     *     information is not available, then {@code zzz} is empty -&#10;     *     that is, it consists of no characters at all.&#10;     * <li>{@code yyyy} is the year, as four decimal digits.&#10;     * </ul>&#10;     *&#10;     * @return  a string representation of this date.&#10;     * @see     java.util.Date#toLocaleString()&#10;     * @see     java.util.Date#toGMTString()&#10;     "
  ]
  node [
    id 12
    label "private static final StringBuilder convertToAbbr(StringBuilder sb, String name)"
    type "method"
    comment "&#10;     * Converts the given name to its 3-letter abbreviation (e.g.,&#10;     * &#34;monday&#34; -> &#34;Mon&#34;) and stored the abbreviation in the given&#10;     * {@code StringBuilder}.&#10;     "
  ]
  node [
    id 13
    label "private final BaseCalendar.Date normalize(BaseCalendar.Date date)"
    type "method"
    comment " fastTime and the returned data are in sync upon return."
  ]
  node [
    id 14
    label "private static final BaseCalendar getCalendarSystem(int year)"
    type "method"
    comment "&#10;     * Returns the Gregorian or Julian calendar system to use with the&#10;     * given date. Use Gregorian from October 15, 1582.&#10;     *&#10;     * @param year normalized calendar year (not -1900)&#10;     * @return the CalendarSystem to use for the specified date&#10;     "
  ]
  node [
    id 15
    label "private void writeObject(ObjectOutputStream s) throws IOException"
    type "method"
    comment "&#10;     * Save the state of this object to a stream (i.e., serialize it).&#10;     *&#10;     * @serialData The value returned by {@code getTime()}&#10;     *             is emitted (long).  This represents the offset from&#10;     *             January 1, 1970, 00:00:00 GMT in milliseconds.&#10;     "
  ]
  node [
    id 16
    label "private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Reconstitute this object from a stream (i.e., deserialize it).&#10;     "
  ]
  node [
    id 17
    label "public static Date from(Instant instant)"
    type "method"
    comment "&#10;     * Obtains an instance of {@code Date} from an {@code Instant} object.&#10;     * <p>&#10;     * {@code Instant} uses a precision of nanoseconds, whereas {@code Date}&#10;     * uses a precision of milliseconds.  The conversion will truncate any&#10;     * excess precision information as though the amount in nanoseconds was&#10;     * subject to integer division by one million.&#10;     * <p>&#10;     * {@code Instant} can store points on the time-line further in the future&#10;     * and further in the past than {@code Date}. In this scenario, this method&#10;     * will throw an exception.&#10;     *&#10;     * @param instant  the instant to convert&#10;     * @return a {@code Date} representing the same point on the time-line as&#10;     *  the provided instant&#10;     * @throws    NullPointerException if {@code instant} is null.&#10;     * @throws    IllegalArgumentException if the instant is too large to&#10;     *  represent as a {@code Date}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 18
    label "public Instant toInstant()"
    type "method"
    comment "&#10;     * Converts this {@code Date} object to an {@code Instant}.&#10;     * <p>&#10;     * The conversion creates an {@code Instant} that represents the same&#10;     * point on the time-line as this {@code Date}.&#10;     *&#10;     * @return an instant representing the same point on the time-line as&#10;     *  this {@code Date} object&#10;     * @since 1.8&#10;     "
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
    target 7
    type "child"
  ]
  edge [
    source 0
    target 8
    type "child"
  ]
  edge [
    source 0
    target 9
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
    target 18
    type "child"
  ]
  edge [
    source 9
    target 10
    type "link"
  ]
]
