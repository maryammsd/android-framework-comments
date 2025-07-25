graph [
  directed 1
  node [
    id 0
    label "java.util.zip.ZipEntry"
    type "class"
    comment "&#10; * This class is used to represent a ZIP file entry.&#10; *&#10; * @author      David Connelly&#10; * @since 1.1&#10; "
  ]
  node [
    id 1
    label "public String getName()"
    type "method"
    comment "&#10;     * Returns the name of the entry.&#10;     * @return the name of the entry&#10;     "
  ]
  node [
    id 2
    label "public void setTime(long time)"
    type "method"
    comment "&#10;     * Sets the last modification time of the entry.&#10;     *&#10;     * <p> If the entry is output to a ZIP file or ZIP file formatted&#10;     * output stream the last modification time set by this method will&#10;     * be stored into the {@code date and time fields} of the zip file&#10;     * entry and encoded in standard {@code MS-DOS date and time format}.&#10;     * The {@link java.util.TimeZone#getDefault() default TimeZone} is&#10;     * used to convert the epoch time to the MS-DOS data and time.&#10;     *&#10;     * @param  time&#10;     *         The last modification time of the entry in milliseconds&#10;     *         since the epoch&#10;     *&#10;     * @see #getTime()&#10;     * @see #getLastModifiedTime()&#10;     "
  ]
  node [
    id 3
    label "getDefault()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "java.util.TimeZone"
    type "class"
    comment "&#10; * {@code TimeZone} represents a time zone offset, and also figures out daylight&#10; * savings.&#10; *&#10; * <p>&#10; * Typically, you get a {@code TimeZone} using {@code getDefault}&#10; * which creates a {@code TimeZone} based on the time zone where the program&#10; * is running. For example, for a program running in Japan, {@code getDefault}&#10; * creates a {@code TimeZone} object based on Japanese Standard Time.&#10; *&#10; * <p>&#10; * You can also get a {@code TimeZone} using {@code getTimeZone}&#10; * along with a time zone ID. For instance, the time zone ID for the&#10; * U.S. Pacific Time zone is &#34;America/Los_Angeles&#34;. So, you can get a&#10; * U.S. Pacific Time {@code TimeZone} object with:&#10; * <blockquote><pre>&#10; * TimeZone tz = TimeZone.getTimeZone(&#34;America/Los_Angeles&#34;);&#10; * </pre></blockquote>&#10; * You can use the {@code getAvailableIDs} method to iterate through&#10; * all the supported time zone IDs. You can then choose a&#10; * supported ID to get a {@code TimeZone}.&#10; * If the time zone you want is not represented by one of the&#10; * supported IDs, then a custom time zone ID can be specified to&#10; * produce a TimeZone. The syntax of a custom time zone ID is:&#10; *&#10; * <blockquote><pre>&#10; * <a id=&#34;CustomID&#34;><i>CustomID:</i></a>&#10; *         {@code GMT} <i>Sign</i> <i>Hours</i> {@code :} <i>Minutes</i>&#10; *         {@code GMT} <i>Sign</i> <i>Hours</i> <i>Minutes</i>&#10; *         {@code GMT} <i>Sign</i> <i>Hours</i>&#10; * <i>Sign:</i> one of&#10; *         {@code + -}&#10; * <i>Hours:</i>&#10; *         <i>Digit</i>&#10; *         <i>Digit</i> <i>Digit</i>&#10; * <i>Minutes:</i>&#10; *         <i>Digit</i> <i>Digit</i>&#10; * <i>Digit:</i> one of&#10; *         {@code 0 1 2 3 4 5 6 7 8 9}&#10; * </pre></blockquote>&#10; *&#10; * <i>Hours</i> must be between 0 to 23 and <i>Minutes</i> must be&#10; * between 00 to 59.  For example, &#34;GMT+10&#34; and &#34;GMT+0010&#34; mean ten&#10; * hours and ten minutes ahead of GMT, respectively.&#10; * <p>&#10; * The format is locale independent and digits must be taken from the&#10; * Basic Latin block of the Unicode standard. No daylight saving time&#10; * transition schedule can be specified with a custom time zone ID. If&#10; * the specified string doesn't match the syntax, {@code &#34;GMT&#34;}&#10; * is used.&#10; * <p>&#10; * When creating a {@code TimeZone}, the specified custom time&#10; * zone ID is normalized in the following syntax:&#10; * <blockquote><pre>&#10; * <a id=&#34;NormalizedCustomID&#34;><i>NormalizedCustomID:</i></a>&#10; *         {@code GMT} <i>Sign</i> <i>TwoDigitHours</i> {@code :} <i>Minutes</i>&#10; * <i>Sign:</i> one of&#10; *         {@code + -}&#10; * <i>TwoDigitHours:</i>&#10; *         <i>Digit</i> <i>Digit</i>&#10; * <i>Minutes:</i>&#10; *         <i>Digit</i> <i>Digit</i>&#10; * <i>Digit:</i> one of&#10; *         {@code 0 1 2 3 4 5 6 7 8 9}&#10; * </pre></blockquote>&#10; * For example, TimeZone.getTimeZone(&#34;GMT-8&#34;).getID() returns &#34;GMT-08:00&#34;.&#10; *&#10; * <h2>Three-letter time zone IDs</h2>&#10; *&#10; * For compatibility with JDK 1.1.x, some other three-letter time zone IDs&#10; * (such as &#34;PST&#34;, &#34;CTT&#34;, &#34;AST&#34;) are also supported. However, <strong>their&#10; * use is deprecated</strong> because the same abbreviation is often used&#10; * for multiple time zones (for example, &#34;CST&#34; could be U.S. &#34;Central Standard&#10; * Time&#34; and &#34;China Standard Time&#34;), and the Java platform can then only&#10; * recognize one of them.&#10; *&#10; *&#10; * @see          Calendar&#10; * @see          GregorianCalendar&#10; * @see          SimpleTimeZone&#10; * @author       Mark Davis, David Goldsmith, Chen-Lieh Huang, Alan Liu&#10; * @since        1.1&#10; "
  ]
  node [
    id 5
    label "public abstract int getOffset(int era, int year, int month, int day, int dayOfWeek, int milliseconds)"
    type "method"
    comment "&#10;     * Gets the time zone offset, for current date, modified in case of&#10;     * daylight savings. This is the offset to add to UTC to get local time.&#10;     * <p>&#10;     * This method returns a historically correct offset if an&#10;     * underlying {@code TimeZone} implementation subclass&#10;     * supports historical Daylight Saving Time schedule and GMT&#10;     * offset changes.&#10;     *&#10;     * @param era the era of the given date.&#10;     * @param year the year in the given date.&#10;     * @param month the month in the given date.&#10;     * Month is 0-based. e.g., 0 for January.&#10;     * @param day the day-in-month of the given date.&#10;     * @param dayOfWeek the day-of-week of the given date.&#10;     * @param milliseconds the milliseconds in day in <em>standard</em>&#10;     * local time.&#10;     *&#10;     * @return the offset in milliseconds to add to GMT to get local time.&#10;     *&#10;     * @see Calendar#ZONE_OFFSET&#10;     * @see Calendar#DST_OFFSET&#10;     "
  ]
  node [
    id 6
    label "public int getOffset(long date)"
    type "method"
    comment "&#10;     * Returns the offset of this time zone from UTC at the specified&#10;     * date. If Daylight Saving Time is in effect at the specified&#10;     * date, the offset value is adjusted with the amount of daylight&#10;     * saving.&#10;     * <p>&#10;     * This method returns a historically correct offset value if an&#10;     * underlying TimeZone implementation subclass supports historical&#10;     * Daylight Saving Time schedule and GMT offset changes.&#10;     *&#10;     * @param date the date represented in milliseconds since January 1, 1970 00:00:00 GMT&#10;     * @return the amount of time in milliseconds to add to UTC to get local time.&#10;     *&#10;     * @see Calendar#ZONE_OFFSET&#10;     * @see Calendar#DST_OFFSET&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 7
    label " int getOffsets(long date, int[] offsets)"
    type "method"
    comment "&#10;     * Gets the raw GMT offset and the amount of daylight saving of this&#10;     * time zone at the given time.&#10;     * @param date the milliseconds (since January 1, 1970,&#10;     * 00:00:00.000 GMT) at which the time zone offset and daylight&#10;     * saving amount are found&#10;     * @param offsets an array of int where the raw GMT offset&#10;     * (offset[0]) and daylight saving amount (offset[1]) are stored,&#10;     * or null if those values are not needed. The method assumes that&#10;     * the length of the given array is two or larger.&#10;     * @return the total amount of the raw GMT offset and daylight&#10;     * saving at the specified date.&#10;     *&#10;     * @see Calendar#ZONE_OFFSET&#10;     * @see Calendar#DST_OFFSET&#10;     "
  ]
  node [
    id 8
    label "public abstract void setRawOffset(int offsetMillis)"
    type "method"
    comment "&#10;     * Sets the base time zone offset to GMT.&#10;     * This is the offset to add to UTC to get local time.&#10;     * <p>&#10;     * If an underlying {@code TimeZone} implementation subclass&#10;     * supports historical GMT offset changes, the specified GMT&#10;     * offset is set as the latest GMT offset and the difference from&#10;     * the known latest GMT offset value is used to adjust all&#10;     * historical GMT offset values.&#10;     *&#10;     * @param offsetMillis the given base time zone offset to GMT.&#10;     "
  ]
  node [
    id 9
    label "public abstract int getRawOffset()"
    type "method"
    comment "&#10;     * Returns the amount of time in milliseconds to add to UTC to get&#10;     * standard time in this time zone. Because this value is not&#10;     * affected by daylight saving time, it is called <I>raw&#10;     * offset</I>.&#10;     * <p>&#10;     * If an underlying {@code TimeZone} implementation subclass&#10;     * supports historical GMT offset changes, the method returns the&#10;     * raw offset value of the current date. In Honolulu, for example,&#10;     * its raw offset changed from GMT-10:30 to GMT-10:00 in 1947, and&#10;     * this method always returns -36000000 milliseconds (i.e., -10&#10;     * hours).&#10;     *&#10;     * @return the amount of raw offset time in milliseconds to add to UTC.&#10;     * @see Calendar#ZONE_OFFSET&#10;     "
  ]
  node [
    id 10
    label "public String getID()"
    type "method"
    comment "&#10;     * Gets the ID of this time zone.&#10;     * @return the ID of this time zone.&#10;     "
  ]
  node [
    id 11
    label "public void setID(String ID)"
    type "method"
    comment "&#10;     * Sets the time zone ID. This does not change any other data in&#10;     * the time zone object.&#10;     * @param ID the new time zone ID.&#10;     "
  ]
  node [
    id 12
    label "public final String getDisplayName()"
    type "method"
    comment "&#10;     * Returns a long standard time name of this {@code TimeZone} suitable for&#10;     * presentation to the user in the default locale.&#10;     *&#10;     * <p>This method is equivalent to:&#10;     * <blockquote><pre>&#10;     * getDisplayName(false, {@link #LONG},&#10;     *                Locale.getDefault({@link Locale.Category#DISPLAY}))&#10;     * </pre></blockquote>&#10;     *&#10;     * @return the human-readable name of this time zone in the default locale.&#10;     * @since 1.2&#10;     * @see #getDisplayName(boolean, int, Locale)&#10;     * @see Locale#getDefault(Locale.Category)&#10;     * @see Locale.Category&#10;     "
  ]
  node [
    id 13
    label "LONG"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "DISPLAY"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public final String getDisplayName(Locale locale)"
    type "method"
    comment "&#10;     * Returns a long standard time name of this {@code TimeZone} suitable for&#10;     * presentation to the user in the specified {@code locale}.&#10;     *&#10;     * <p>This method is equivalent to:&#10;     * <blockquote><pre>&#10;     * getDisplayName(false, {@link #LONG}, locale)&#10;     * </pre></blockquote>&#10;     *&#10;     * @param locale the locale in which to supply the display name.&#10;     * @return the human-readable name of this time zone in the given locale.&#10;     * @throws    NullPointerException if {@code locale} is {@code null}.&#10;     * @since 1.2&#10;     * @see #getDisplayName(boolean, int, Locale)&#10;     "
  ]
  node [
    id 16
    label "public final String getDisplayName(boolean daylight, int style)"
    type "method"
    comment "&#10;     * Returns a name in the specified {@code style} of this {@code TimeZone}&#10;     * suitable for presentation to the user in the default locale. If the&#10;     * specified {@code daylight} is {@code true}, a Daylight Saving Time name&#10;     * is returned (even if this {@code TimeZone} doesn't observe Daylight Saving&#10;     * Time). Otherwise, a Standard Time name is returned.&#10;     *&#10;     * <p>This method is equivalent to:&#10;     * <blockquote><pre>&#10;     * getDisplayName(daylight, style,&#10;     *                Locale.getDefault({@link Locale.Category#DISPLAY}))&#10;     * </pre></blockquote>&#10;     *&#10;     * @param daylight {@code true} specifying a Daylight Saving Time name, or&#10;     *                 {@code false} specifying a Standard Time name&#10;     * @param style either {@link #LONG} or {@link #SHORT}&#10;     * @return the human-readable name of this time zone in the default locale.&#10;     * @throws    IllegalArgumentException if {@code style} is invalid.&#10;     * @since 1.2&#10;     * @see #getDisplayName(boolean, int, Locale)&#10;     * @see Locale#getDefault(Locale.Category)&#10;     * @see Locale.Category&#10;     * @see java.text.DateFormatSymbols#getZoneStrings()&#10;     "
  ]
  node [
    id 17
    label "SHORT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 18
    label "public String getDisplayName(boolean daylightTime, int style, Locale locale)"
    type "method"
    comment "&#10;     * Returns the {@link #SHORT short} or {@link #LONG long} name of this time&#10;     * zone with either standard or daylight time, as written in {@code locale}.&#10;     * If the name is not available, the result is in the format&#10;     * {@code GMT[+-]hh:mm}.&#10;     *&#10;     * @param daylightTime true for daylight time, false for standard time.&#10;     * @param style either {@link TimeZone#LONG} or {@link TimeZone#SHORT}.&#10;     * @param locale the display locale.&#10;     "
  ]
  node [
    id 19
    label "com.android.icu.util.ExtendedTimeZone"
    type "class"
    comment "&#10; * Provide extra functionalities on top of {@link TimeZone} public APIs.&#10; *&#10; * @hide&#10; "
  ]
  node [
    id 20
    label "private ZoneOffsetTransitionRule createZoneOffsetTransitionRule(AnnualTimeZoneRule annualTimeZoneRule, ZoneOffset lastStandardOffset, ZoneOffset lastWallOffset)"
    type "method"
    comment "&#10;     * Converts {@link AnnualTimeZoneRule} to {@link ZoneOffsetTransitionRule}. Switch date may be&#10;     * represented relative to UTC, wall clock, or standard offset. For the latter 2 cases&#10;     * {@code lastWallOffset} and {@code lastStandardOffset} are used.&#10;     *&#10;     * @param annualTimeZoneRule  rule to be converted&#10;     * @param lastStandardOffset  standard offset of a rule which preceded {@code&#10;     *     annualTimeZoneRule}&#10;     * @param lastWallOffset  wall offset of a rule which preceded {@code annualTimeZoneRule}&#10;     "
  ]
  node [
    id 21
    label "android.icu.util.AnnualTimeZoneRule"
    type "class"
    comment "&#10; * <code>AnnualTimeZoneRule</code> is a class used for representing a time zone&#10; * rule which takes effect annually.  Years used in this class are&#10; * all Gregorian calendar years.&#10; *&#10; * @hide Only a subset of ICU is exposed in Android&#10; "
  ]
  node [
    id 22
    label "public DateTimeRule getRule()"
    type "method"
    comment "&#10;     * Gets the start date/time rule associated used by this rule.&#10;     *&#10;     * @return  An <code>AnnualDateTimeRule</code> which represents the start date/time&#10;     *          rule used by this time zone rule.&#10;     "
  ]
  node [
    id 23
    label "public int getStartYear()"
    type "method"
    comment "&#10;     * Gets the first year when this rule takes effect.&#10;     *&#10;     * @return  The start year of this rule.  The year is in Gregorian calendar&#10;     *          with 0 == 1 BCE, -1 == 2 BCE, etc.&#10;     "
  ]
  node [
    id 24
    label "public int getEndYear()"
    type "method"
    comment "&#10;     * Gets the end year when this rule takes effect.&#10;     *&#10;     * @return  The end year of this rule (inclusive). The year is in Gregorian calendar&#10;     *          with 0 == 1 BCE, -1 == 2 BCE, etc.&#10;     "
  ]
  node [
    id 25
    label "public Date getStartInYear(int year, int prevRawOffset, int prevDSTSavings)"
    type "method"
    comment "&#10;     * Gets the time when this rule takes effect in the given year.&#10;     *&#10;     * @param year              The Gregorian year, with 0 == 1 BCE, -1 == 2 BCE, etc.&#10;     * @param prevRawOffset     The standard time offset from UTC before this rule&#10;     *                          takes effect in milliseconds.&#10;     * @param prevDSTSavings    The amount of daylight saving offset from the&#10;     *                          standard time.&#10;     *&#10;     * @return  The time when this rule takes effect in the year, or&#10;     *          null if this rule is not applicable in the year.&#10;     "
  ]
  node [
    id 26
    label "public Date getFirstStart(int prevRawOffset, int prevDSTSavings)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     "
  ]
  node [
    id 27
    label "public Date getFinalStart(int prevRawOffset, int prevDSTSavings)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     "
  ]
  node [
    id 28
    label "public Date getNextStart(long base, int prevRawOffset, int prevDSTSavings, boolean inclusive)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     "
  ]
  node [
    id 29
    label "public Date getPreviousStart(long base, int prevRawOffset, int prevDSTSavings, boolean inclusive)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     "
  ]
  node [
    id 30
    label "public boolean isEquivalentTo(TimeZoneRule other)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     "
  ]
  node [
    id 31
    label "public boolean isTransitionRule()"
    type "method"
    comment "&#10;     * {@inheritDoc}<br><br>&#10;     * Note: This method in <code>AnnualTimeZoneRule</code> always returns true.&#10;     "
  ]
  node [
    id 32
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string representation of the ZIP entry.&#10;     "
  ]
  node [
    id 33
    label "java.time.zone.ZoneOffsetTransitionRule"
  ]
  node [
    id 34
    label "public int getDSTSavings()"
    type "method"
    comment "&#10;     * Returns the amount of time to be added to local standard time&#10;     * to get local wall clock time.&#10;     *&#10;     * <p>The default implementation returns 3600000 milliseconds&#10;     * (i.e., one hour) if a call to {@link #useDaylightTime()}&#10;     * returns {@code true}. Otherwise, 0 (zero) is returned.&#10;     *&#10;     * <p>If an underlying {@code TimeZone} implementation subclass&#10;     * supports historical and future Daylight Saving Time schedule&#10;     * changes, this method returns the amount of saving time of the&#10;     * last known Daylight Saving Time rule that can be a future&#10;     * prediction.&#10;     *&#10;     * <p>If the amount of saving time at any given time stamp is&#10;     * required, construct a {@link Calendar} with this {@code&#10;     * TimeZone} and the time stamp, and call {@link Calendar#get(int)&#10;     * Calendar.get}{@code (}{@link Calendar#DST_OFFSET}{@code )}.&#10;     *&#10;     * @return the amount of saving time in milliseconds&#10;     * @since 1.4&#10;     * @see #inDaylightTime(Date)&#10;     * @see #getOffset(long)&#10;     * @see #getOffset(int,int,int,int,int,int)&#10;     * @see Calendar#ZONE_OFFSET&#10;     "
  ]
  node [
    id 35
    label "DST_OFFSET"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 36
    label "Calendar"
  ]
  node [
    id 37
    label "useDaylightTime()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 38
    label "get(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 39
    label "public abstract boolean useDaylightTime()"
    type "method"
    comment "&#10;     * Queries if this {@code TimeZone} uses Daylight Saving Time.&#10;     *&#10;     * <p>If an underlying {@code TimeZone} implementation subclass&#10;     * supports historical and future Daylight Saving Time schedule&#10;     * changes, this method refers to the last known Daylight Saving Time&#10;     * rule that can be a future prediction and may not be the same as&#10;     * the current rule. Consider calling {@link #observesDaylightTime()}&#10;     * if the current rule should also be taken into account.&#10;     *&#10;     * @return {@code true} if this {@code TimeZone} uses Daylight Saving Time,&#10;     *         {@code false}, otherwise.&#10;     * @see #inDaylightTime(Date)&#10;     * @see Calendar#DST_OFFSET&#10;     "
  ]
  node [
    id 40
    label "observesDaylightTime()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 41
    label "public boolean observesDaylightTime()"
    type "method"
    comment "&#10;     * Returns {@code true} if this {@code TimeZone} is currently in&#10;     * Daylight Saving Time, or if a transition from Standard Time to&#10;     * Daylight Saving Time occurs at any future time.&#10;     *&#10;     * <p>The default implementation returns {@code true} if&#10;     * {@code useDaylightTime()} or {@code inDaylightTime(new Date())}&#10;     * returns {@code true}.&#10;     *&#10;     * @return {@code true} if this {@code TimeZone} is currently in&#10;     * Daylight Saving Time, or if a transition from Standard Time to&#10;     * Daylight Saving Time occurs at any future time; {@code false}&#10;     * otherwise.&#10;     * @since 1.7&#10;     * @see #useDaylightTime()&#10;     * @see #inDaylightTime(Date)&#10;     * @see Calendar#DST_OFFSET&#10;     "
  ]
  node [
    id 42
    label "public abstract boolean inDaylightTime(Date date)"
    type "method"
    comment "&#10;     * Queries if the given {@code date} is in Daylight Saving Time in&#10;     * this time zone.&#10;     *&#10;     * @param date the given Date.&#10;     * @return {@code true} if the given date is in Daylight Saving Time,&#10;     *         {@code false}, otherwise.&#10;     "
  ]
  node [
    id 43
    label "public static synchronized TimeZone getTimeZone(String id)"
    type "method"
    comment " Android-changed: param s/ID/id; use ZoneInfoDb instead of ZoneInfo class."
  ]
  node [
    id 44
    label "public static TimeZone getTimeZone(ZoneId zoneId)"
    type "method"
    comment "&#10;     * Gets the {@code TimeZone} for the given {@code zoneId}.&#10;     *&#10;     * @param zoneId a {@link ZoneId} from which the time zone ID is obtained&#10;     * @return the specified {@code TimeZone}, or the GMT zone if the given ID&#10;     *         cannot be understood.&#10;     * @throws NullPointerException if {@code zoneId} is {@code null}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 45
    label "java.time.ZoneId"
  ]
  node [
    id 46
    label "public ZoneId toZoneId()"
    type "method"
    comment "&#10;     * Converts this {@code TimeZone} object to a {@code ZoneId}.&#10;     *&#10;     * @return a {@code ZoneId} representing the same time zone as this&#10;     *         {@code TimeZone}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 47
    label "private static TimeZone getCustomTimeZone(String id)"
    type "method"
    comment "&#10;     * Returns a new SimpleTimeZone for an ID of the form &#34;GMT[+|-]hh[[:]mm]&#34;, or null.&#10;     "
  ]
  node [
    id 48
    label "public static synchronized String[] getAvailableIDs(int rawOffset)"
    type "method"
    comment "&#10;     * Gets the available IDs according to the given time zone offset in milliseconds.&#10;     *&#10;     * @param rawOffset the given time zone GMT offset in milliseconds.&#10;     * @return an array of IDs, where the time zone for that ID has&#10;     * the specified GMT offset. For example, &#34;America/Phoenix&#34; and &#34;America/Denver&#34;&#10;     * both have GMT-07:00, but differ in daylight saving behavior.&#10;     * @see #getRawOffset()&#10;     "
  ]
  node [
    id 49
    label "public static synchronized String[] getAvailableIDs()"
    type "method"
    comment "&#10;     * Gets all the available IDs supported.&#10;     * @return an array of IDs.&#10;     "
  ]
  node [
    id 50
    label "private static native String getSystemTimeZoneID(String javaHome, String country)"
    type "method"
    comment "&#10;     * Gets the platform defined TimeZone ID.&#10;     *"
  ]
  node [
    id 51
    label "private static native String getSystemGMTOffsetID()"
    type "method"
    comment "&#10;     * Gets the custom time zone ID based on the GMT offset of the&#10;     * platform. (e.g., &#34;GMT+08:00&#34;)&#10;     "
  ]
  node [
    id 52
    label "public static TimeZone getDefault()"
    type "method"
    comment "&#10;     * Gets the default <code>TimeZone</code> for this host.&#10;     * The source of the default <code>TimeZone</code>&#10;     * may vary with implementation.&#10;     * @return a default <code>TimeZone</code>.&#10;     * @see #setDefault&#10;     "
  ]
  node [
    id 53
    label " static synchronized TimeZone getDefaultRef()"
    type "method"
    comment "&#10;     * Returns the reference to the default TimeZone object. This&#10;     * method doesn't create a clone.&#10;     "
  ]
  node [
    id 54
    label "public static synchronized void setDefault(TimeZone timeZone)"
    type "method"
    comment " Android-changed: s/zone/timeZone, synchronized, removed mention of SecurityException"
  ]
  node [
    id 55
    label "public boolean hasSameRules(TimeZone other)"
    type "method"
    comment "&#10;     * Returns true if this zone has the same rule and offset as another zone.&#10;     * That is, if this zone differs only in ID, if at all.  Returns false&#10;     * if the other zone is null.&#10;     * @param other the {@code TimeZone} object to be compared with&#10;     * @return true if the other zone is not null and is the same as this one,&#10;     * with the possible exception of the ID&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 56
    label "public Object clone()"
    type "method"
    comment "&#10;     * Returns a copy of this entry.&#10;     "
  ]
  node [
    id 57
    label "public long getTime()"
    type "method"
    comment "&#10;     * Returns the last modification time of the entry.&#10;     *&#10;     * <p> If the entry is read from a ZIP file or ZIP file formatted&#10;     * input stream, this is the last modification time from the {@code&#10;     * date and time fields} of the zip file entry. The&#10;     * {@link java.util.TimeZone#getDefault() default TimeZone} is used&#10;     * to convert the standard MS-DOS formatted date and time to the&#10;     * epoch time.&#10;     *&#10;     * @return  The last modification time of the entry in milliseconds&#10;     *          since the epoch, or -1 if not specified&#10;     *&#10;     * @see #setTime(long)&#10;     * @see #setLastModifiedTime(FileTime)&#10;     "
  ]
  node [
    id 58
    label "public void setTimeLocal(LocalDateTime time)"
    type "method"
    comment "&#10;     * Sets the last modification time of the entry in local date-time.&#10;     *&#10;     * <p> If the entry is output to a ZIP file or ZIP file formatted&#10;     * output stream the last modification time set by this method will&#10;     * be stored into the {@code date and time fields} of the zip file&#10;     * entry and encoded in standard {@code MS-DOS date and time format}.&#10;     * If the date-time set is out of the range of the standard {@code&#10;     * MS-DOS date and time format}, the time will also be stored into&#10;     * zip file entry's extended timestamp fields in {@code optional&#10;     * extra data} in UTC time. The {@link java.time.ZoneId#systemDefault()&#10;     * system default TimeZone} is used to convert the local date-time&#10;     * to UTC time.&#10;     *&#10;     * <p> {@code LocalDateTime} uses a precision of nanoseconds, whereas&#10;     * this class uses a precision of milliseconds. The conversion will&#10;     * truncate any excess precision information as though the amount in&#10;     * nanoseconds was subject to integer division by one million.&#10;     *&#10;     * @param  time&#10;     *         The last modification time of the entry in local date-time&#10;     *&#10;     * @see #getTimeLocal()&#10;     * @since 9&#10;     "
  ]
  node [
    id 59
    label "public LocalDateTime getTimeLocal()"
    type "method"
    comment "&#10;     * Returns the last modification time of the entry in local date-time.&#10;     *&#10;     * <p> If the entry is read from a ZIP file or ZIP file formatted&#10;     * input stream, this is the last modification time from the zip&#10;     * file entry's {@code optional extra data} if the extended timestamp&#10;     * fields are present. Otherwise, the last modification time is read&#10;     * from entry's standard MS-DOS formatted {@code date and time fields}.&#10;     *&#10;     * <p> The {@link java.time.ZoneId#systemDefault() system default TimeZone}&#10;     * is used to convert the UTC time to local date-time.&#10;     *&#10;     * @return  The last modification time of the entry in local date-time&#10;     *&#10;     * @see #setTimeLocal(LocalDateTime)&#10;     * @since 9&#10;     "
  ]
  node [
    id 60
    label "public ZipEntry setLastModifiedTime(FileTime time)"
    type "method"
    comment "&#10;     * Sets the last modification time of the entry.&#10;     *&#10;     * <p> When output to a ZIP file or ZIP file formatted output stream&#10;     * the last modification time set by this method will be stored into&#10;     * zip file entry's {@code date and time fields} in {@code standard&#10;     * MS-DOS date and time format}), and the extended timestamp fields&#10;     * in {@code optional extra data} in UTC time.&#10;     *&#10;     * @param  time&#10;     *         The last modification time of the entry&#10;     * @return This zip entry&#10;     *&#10;     * @throws NullPointerException if the {@code time} is null&#10;     *&#10;     * @see #getLastModifiedTime()&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 61
    label "public FileTime getLastModifiedTime()"
    type "method"
    comment "&#10;     * Returns the last modification time of the entry.&#10;     *&#10;     * <p> If the entry is read from a ZIP file or ZIP file formatted&#10;     * input stream, this is the last modification time from the zip&#10;     * file entry's {@code optional extra data} if the extended timestamp&#10;     * fields are present. Otherwise the last modification time is read&#10;     * from the entry's {@code date and time fields}, the {@link&#10;     * java.util.TimeZone#getDefault() default TimeZone} is used to convert&#10;     * the standard MS-DOS formatted date and time to the epoch time.&#10;     *&#10;     * @return The last modification time of the entry, null if not specified&#10;     *&#10;     * @see #setLastModifiedTime(FileTime)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 62
    label "public ZipEntry setLastAccessTime(FileTime time)"
    type "method"
    comment "&#10;     * Sets the last access time of the entry.&#10;     *&#10;     * <p> If set, the last access time will be stored into the extended&#10;     * timestamp fields of entry's {@code optional extra data}, when output&#10;     * to a ZIP file or ZIP file formatted stream.&#10;     *&#10;     * @param  time&#10;     *         The last access time of the entry&#10;     * @return This zip entry&#10;     *&#10;     * @throws NullPointerException if the {@code time} is null&#10;     *&#10;     * @see #getLastAccessTime()&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 63
    label "public FileTime getLastAccessTime()"
    type "method"
    comment "&#10;     * Returns the last access time of the entry.&#10;     *&#10;     * <p> The last access time is from the extended timestamp fields&#10;     * of entry's {@code optional extra data} when read from a ZIP file&#10;     * or ZIP file formatted stream.&#10;     *&#10;     * @return The last access time of the entry, null if not specified&#10;     * @see #setLastAccessTime(FileTime)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 64
    label "public ZipEntry setCreationTime(FileTime time)"
    type "method"
    comment "&#10;     * Sets the creation time of the entry.&#10;     *&#10;     * <p> If set, the creation time will be stored into the extended&#10;     * timestamp fields of entry's {@code optional extra data}, when&#10;     * output to a ZIP file or ZIP file formatted stream.&#10;     *&#10;     * @param  time&#10;     *         The creation time of the entry&#10;     * @return This zip entry&#10;     *&#10;     * @throws NullPointerException if the {@code time} is null&#10;     *&#10;     * @see #getCreationTime()&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 65
    label "public FileTime getCreationTime()"
    type "method"
    comment "&#10;     * Returns the creation time of the entry.&#10;     *&#10;     * <p> The creation time is from the extended timestamp fields of&#10;     * entry's {@code optional extra data} when read from a ZIP file&#10;     * or ZIP file formatted stream.&#10;     *&#10;     * @return the creation time of the entry, null if not specified&#10;     * @see #setCreationTime(FileTime)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 66
    label "public void setSize(long size)"
    type "method"
    comment "&#10;     * Sets the uncompressed size of the entry data.&#10;     *&#10;     * @param size the uncompressed size in bytes&#10;     *&#10;     * @throws IllegalArgumentException if the specified size is less&#10;     *         than 0, is greater than 0xFFFFFFFF when&#10;     *         <a href=&#34;package-summary.html#zip64&#34;>ZIP64 format</a> is not supported,&#10;     *         or is less than 0 when ZIP64 is supported&#10;     * @see #getSize()&#10;     "
  ]
  node [
    id 67
    label "public long getSize()"
    type "method"
    comment "&#10;     * Returns the uncompressed size of the entry data.&#10;     *&#10;     * @return the uncompressed size of the entry data, or -1 if not known&#10;     * @see #setSize(long)&#10;     "
  ]
  node [
    id 68
    label "public long getCompressedSize()"
    type "method"
    comment "&#10;     * Returns the size of the compressed entry data.&#10;     *&#10;     * <p> In the case of a stored entry, the compressed size will be the same&#10;     * as the uncompressed size of the entry.&#10;     *&#10;     * @return the size of the compressed entry data, or -1 if not known&#10;     * @see #setCompressedSize(long)&#10;     "
  ]
  node [
    id 69
    label "public void setCompressedSize(long csize)"
    type "method"
    comment "&#10;     * Sets the size of the compressed entry data.&#10;     *&#10;     * @param csize the compressed size to set&#10;     *&#10;     * @see #getCompressedSize()&#10;     "
  ]
  node [
    id 70
    label "public void setCrc(long crc)"
    type "method"
    comment "&#10;     * Sets the CRC-32 checksum of the uncompressed entry data.&#10;     *&#10;     * @param crc the CRC-32 value&#10;     *&#10;     * @throws IllegalArgumentException if the specified CRC-32 value is&#10;     *         less than 0 or greater than 0xFFFFFFFF&#10;     * @see #getCrc()&#10;     "
  ]
  node [
    id 71
    label "public long getCrc()"
    type "method"
    comment "&#10;     * Returns the CRC-32 checksum of the uncompressed entry data.&#10;     *&#10;     * @return the CRC-32 checksum of the uncompressed entry data, or -1 if&#10;     * not known&#10;     *&#10;     * @see #setCrc(long)&#10;     "
  ]
  node [
    id 72
    label "public void setMethod(int method)"
    type "method"
    comment "&#10;     * Sets the compression method for the entry.&#10;     *&#10;     * @param method the compression method, either STORED or DEFLATED&#10;     *&#10;     * @throws  IllegalArgumentException if the specified compression&#10;     *          method is invalid&#10;     * @see #getMethod()&#10;     "
  ]
  node [
    id 73
    label "public int getMethod()"
    type "method"
    comment "&#10;     * Returns the compression method of the entry.&#10;     *&#10;     * @return the compression method of the entry, or -1 if not specified&#10;     * @see #setMethod(int)&#10;     "
  ]
  node [
    id 74
    label "public void setExtra(byte[] extra)"
    type "method"
    comment "&#10;     * Sets the optional extra field data for the entry.&#10;     *&#10;     * <p> Invoking this method may change this entry's last modification&#10;     * time, last access time and creation time, if the {@code extra} field&#10;     * data includes the extensible timestamp fields, such as {@code NTFS tag&#10;     * 0x0001} or {@code Info-ZIP Extended Timestamp}, as specified in&#10;     * <a href=&#34;http://www.info-zip.org/doc/appnote-19970311-iz.zip&#34;>Info-ZIP&#10;     * Application Note 970311</a>.&#10;     *&#10;     * @param  extra&#10;     *         The extra field data bytes&#10;     *&#10;     * @throws IllegalArgumentException if the length of the specified&#10;     *         extra field data is greater than 0xFFFF bytes&#10;     *&#10;     * @see #getExtra()&#10;     "
  ]
  node [
    id 75
    label " void setExtra0(byte[] extra, boolean doZIP64, boolean isLOC)"
    type "method"
    comment "&#10;     * Sets the optional extra field data for the entry.&#10;     *&#10;     * @param extra&#10;     *        the extra field data bytes&#10;     * @param doZIP64&#10;     *        if true, set size and csize from ZIP64 fields if present&#10;     * @param isLOC&#10;     *        true if setting the extra field for a LOC, false if for&#10;     *        a CEN&#10;     "
  ]
  node [
    id 76
    label "public byte[] getExtra()"
    type "method"
    comment "&#10;     * Returns the extra field data for the entry.&#10;     *&#10;     * @return the extra field data for the entry, or null if none&#10;     *&#10;     * @see #setExtra(byte[])&#10;     "
  ]
  node [
    id 77
    label "public void setComment(String comment)"
    type "method"
    comment "&#10;     * Sets the optional comment string for the entry.&#10;     *&#10;     * <p>ZIP entry comments have maximum length of 0xffff. If the length of the&#10;     * specified comment string is greater than 0xFFFF bytes after encoding, only&#10;     * the first 0xFFFF bytes are output to the ZIP file entry.&#10;     *&#10;     * @param comment the comment string&#10;     *&#10;     * @see #getComment()&#10;     "
  ]
  node [
    id 78
    label "public String getComment()"
    type "method"
    comment "&#10;     * Returns the comment string for the entry.&#10;     *&#10;     * @return the comment string for the entry, or null if none&#10;     *&#10;     * @see #setComment(String)&#10;     "
  ]
  node [
    id 79
    label "public boolean isDirectory()"
    type "method"
    comment "&#10;     * Returns true if this is a directory entry. A directory entry is&#10;     * defined to be one whose name ends with a '/'.&#10;     * @return true if this is a directory entry&#10;     "
  ]
  node [
    id 80
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns the hash code value for this entry.&#10;     "
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
    target 64
    type "child"
  ]
  edge [
    source 0
    target 65
    type "child"
  ]
  edge [
    source 0
    target 66
    type "child"
  ]
  edge [
    source 0
    target 67
    type "child"
  ]
  edge [
    source 0
    target 68
    type "child"
  ]
  edge [
    source 0
    target 69
    type "child"
  ]
  edge [
    source 0
    target 70
    type "child"
  ]
  edge [
    source 0
    target 71
    type "child"
  ]
  edge [
    source 0
    target 72
    type "child"
  ]
  edge [
    source 0
    target 73
    type "child"
  ]
  edge [
    source 0
    target 74
    type "child"
  ]
  edge [
    source 0
    target 75
    type "child"
  ]
  edge [
    source 0
    target 76
    type "child"
  ]
  edge [
    source 0
    target 77
    type "child"
  ]
  edge [
    source 0
    target 78
    type "child"
  ]
  edge [
    source 0
    target 79
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 80
    type "child"
  ]
  edge [
    source 0
    target 56
    type "child"
  ]
  edge [
    source 2
    target 3
    type "link"
  ]
  edge [
    source 4
    target 5
    type "child"
  ]
  edge [
    source 4
    target 6
    type "child"
  ]
  edge [
    source 4
    target 7
    type "child"
  ]
  edge [
    source 4
    target 8
    type "child"
  ]
  edge [
    source 4
    target 9
    type "child"
  ]
  edge [
    source 4
    target 10
    type "child"
  ]
  edge [
    source 4
    target 11
    type "child"
  ]
  edge [
    source 4
    target 12
    type "child"
  ]
  edge [
    source 4
    target 15
    type "child"
  ]
  edge [
    source 4
    target 16
    type "child"
  ]
  edge [
    source 4
    target 18
    type "child"
  ]
  edge [
    source 4
    target 34
    type "child"
  ]
  edge [
    source 4
    target 39
    type "child"
  ]
  edge [
    source 4
    target 41
    type "child"
  ]
  edge [
    source 4
    target 42
    type "child"
  ]
  edge [
    source 4
    target 43
    type "child"
  ]
  edge [
    source 4
    target 44
    type "child"
  ]
  edge [
    source 4
    target 46
    type "child"
  ]
  edge [
    source 4
    target 47
    type "child"
  ]
  edge [
    source 4
    target 48
    type "child"
  ]
  edge [
    source 4
    target 49
    type "child"
  ]
  edge [
    source 4
    target 50
    type "child"
  ]
  edge [
    source 4
    target 51
    type "child"
  ]
  edge [
    source 4
    target 52
    type "child"
  ]
  edge [
    source 4
    target 53
    type "child"
  ]
  edge [
    source 4
    target 54
    type "child"
  ]
  edge [
    source 4
    target 55
    type "child"
  ]
  edge [
    source 4
    target 56
    type "child"
  ]
  edge [
    source 12
    target 13
    type "link"
  ]
  edge [
    source 12
    target 14
    type "link"
  ]
  edge [
    source 15
    target 13
    type "link"
  ]
  edge [
    source 16
    target 17
    type "link"
  ]
  edge [
    source 16
    target 14
    type "link"
  ]
  edge [
    source 16
    target 13
    type "link"
  ]
  edge [
    source 18
    target 17
    type "link"
  ]
  edge [
    source 18
    target 13
    type "link"
  ]
  edge [
    source 18
    target 19
    type "link"
  ]
  edge [
    source 18
    target 4
    type "link"
  ]
  edge [
    source 19
    target 20
    type "child"
  ]
  edge [
    source 20
    target 21
    type "link"
  ]
  edge [
    source 20
    target 33
    type "link"
  ]
  edge [
    source 21
    target 22
    type "child"
  ]
  edge [
    source 21
    target 23
    type "child"
  ]
  edge [
    source 21
    target 24
    type "child"
  ]
  edge [
    source 21
    target 25
    type "child"
  ]
  edge [
    source 21
    target 26
    type "child"
  ]
  edge [
    source 21
    target 27
    type "child"
  ]
  edge [
    source 21
    target 28
    type "child"
  ]
  edge [
    source 21
    target 29
    type "child"
  ]
  edge [
    source 21
    target 30
    type "child"
  ]
  edge [
    source 21
    target 31
    type "child"
  ]
  edge [
    source 21
    target 32
    type "child"
  ]
  edge [
    source 34
    target 35
    type "link"
  ]
  edge [
    source 34
    target 36
    type "link"
  ]
  edge [
    source 34
    target 37
    type "link"
  ]
  edge [
    source 34
    target 38
    type "link"
  ]
  edge [
    source 39
    target 40
    type "link"
  ]
  edge [
    source 44
    target 45
    type "link"
  ]
  edge [
    source 57
    target 3
    type "link"
  ]
  edge [
    source 58
    target 45
    type "link"
  ]
  edge [
    source 59
    target 45
    type "link"
  ]
  edge [
    source 61
    target 3
    type "link"
  ]
]
