package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.UnmodifiableIterator;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
@Immutable
public final class MediaType {
    private final String f;
    private final String g;
    private final ImmutableListMultimap<String, String> h;
    private String i;
    private int j;
    private static final ImmutableListMultimap<String, String> a = ImmutableListMultimap.of("charset", Ascii.toLowerCase(Charsets.UTF_8.name()));
    private static final CharMatcher b = CharMatcher.ASCII.and(CharMatcher.JAVA_ISO_CONTROL.negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));
    private static final CharMatcher c = CharMatcher.ASCII.and(CharMatcher.noneOf("\"\\\r"));
    private static final CharMatcher d = CharMatcher.anyOf(" \t\r\n");
    private static final Map<MediaType, MediaType> e = Maps.newHashMap();
    public static final MediaType ANY_TYPE = a(Constraint.ANY_ROLE, Constraint.ANY_ROLE);
    public static final MediaType ANY_TEXT_TYPE = a("text", Constraint.ANY_ROLE);
    public static final MediaType ANY_IMAGE_TYPE = a("image", Constraint.ANY_ROLE);
    public static final MediaType ANY_AUDIO_TYPE = a("audio", Constraint.ANY_ROLE);
    public static final MediaType ANY_VIDEO_TYPE = a("video", Constraint.ANY_ROLE);
    public static final MediaType ANY_APPLICATION_TYPE = a("application", Constraint.ANY_ROLE);
    public static final MediaType CACHE_MANIFEST_UTF_8 = b("text", "cache-manifest");
    public static final MediaType CSS_UTF_8 = b("text", "css");
    public static final MediaType CSV_UTF_8 = b("text", "csv");
    public static final MediaType HTML_UTF_8 = b("text", "html");
    public static final MediaType I_CALENDAR_UTF_8 = b("text", "calendar");
    public static final MediaType PLAIN_TEXT_UTF_8 = b("text", "plain");
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = b("text", "javascript");
    public static final MediaType TSV_UTF_8 = b("text", "tab-separated-values");
    public static final MediaType VCARD_UTF_8 = b("text", "vcard");
    public static final MediaType WML_UTF_8 = b("text", "vnd.wap.wml");
    public static final MediaType XML_UTF_8 = b("text", "xml");
    public static final MediaType BMP = a("image", "bmp");
    public static final MediaType CRW = a("image", "x-canon-crw");
    public static final MediaType GIF = a("image", "gif");
    public static final MediaType ICO = a("image", "vnd.microsoft.icon");
    public static final MediaType JPEG = a("image", "jpeg");
    public static final MediaType PNG = a("image", "png");
    public static final MediaType PSD = a("image", "vnd.adobe.photoshop");
    public static final MediaType SVG_UTF_8 = b("image", "svg+xml");
    public static final MediaType TIFF = a("image", "tiff");
    public static final MediaType WEBP = a("image", "webp");
    public static final MediaType MP4_AUDIO = a("audio", "mp4");
    public static final MediaType MPEG_AUDIO = a("audio", "mpeg");
    public static final MediaType OGG_AUDIO = a("audio", "ogg");
    public static final MediaType WEBM_AUDIO = a("audio", "webm");
    public static final MediaType MP4_VIDEO = a("video", "mp4");
    public static final MediaType MPEG_VIDEO = a("video", "mpeg");
    public static final MediaType OGG_VIDEO = a("video", "ogg");
    public static final MediaType QUICKTIME = a("video", "quicktime");
    public static final MediaType WEBM_VIDEO = a("video", "webm");
    public static final MediaType WMV = a("video", "x-ms-wmv");
    public static final MediaType APPLICATION_XML_UTF_8 = b("application", "xml");
    public static final MediaType ATOM_UTF_8 = b("application", "atom+xml");
    public static final MediaType BZIP2 = a("application", "x-bzip2");
    public static final MediaType DART_UTF_8 = b("application", "dart");
    public static final MediaType APPLE_PASSBOOK = a("application", "vnd.apple.pkpass");
    public static final MediaType EOT = a("application", "vnd.ms-fontobject");
    public static final MediaType EPUB = a("application", "epub+zip");
    public static final MediaType FORM_DATA = a("application", "x-www-form-urlencoded");
    public static final MediaType KEY_ARCHIVE = a("application", "pkcs12");
    public static final MediaType APPLICATION_BINARY = a("application", "binary");
    public static final MediaType GZIP = a("application", "x-gzip");
    public static final MediaType JAVASCRIPT_UTF_8 = b("application", "javascript");
    public static final MediaType JSON_UTF_8 = b("application", "json");
    public static final MediaType MANIFEST_JSON_UTF_8 = b("application", "manifest+json");
    public static final MediaType KML = a("application", "vnd.google-earth.kml+xml");
    public static final MediaType KMZ = a("application", "vnd.google-earth.kmz");
    public static final MediaType MBOX = a("application", "mbox");
    public static final MediaType APPLE_MOBILE_CONFIG = a("application", "x-apple-aspen-config");
    public static final MediaType MICROSOFT_EXCEL = a("application", "vnd.ms-excel");
    public static final MediaType MICROSOFT_POWERPOINT = a("application", "vnd.ms-powerpoint");
    public static final MediaType MICROSOFT_WORD = a("application", "msword");
    public static final MediaType OCTET_STREAM = a("application", "octet-stream");
    public static final MediaType OGG_CONTAINER = a("application", "ogg");
    public static final MediaType OOXML_DOCUMENT = a("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType OOXML_PRESENTATION = a("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType OOXML_SHEET = a("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType OPENDOCUMENT_GRAPHICS = a("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType OPENDOCUMENT_PRESENTATION = a("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType OPENDOCUMENT_SPREADSHEET = a("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType OPENDOCUMENT_TEXT = a("application", "vnd.oasis.opendocument.text");
    public static final MediaType PDF = a("application", "pdf");
    public static final MediaType POSTSCRIPT = a("application", "postscript");
    public static final MediaType PROTOBUF = a("application", "protobuf");
    public static final MediaType RDF_XML_UTF_8 = b("application", "rdf+xml");
    public static final MediaType RTF_UTF_8 = b("application", "rtf");
    public static final MediaType SFNT = a("application", "font-sfnt");
    public static final MediaType SHOCKWAVE_FLASH = a("application", "x-shockwave-flash");
    public static final MediaType SKETCHUP = a("application", "vnd.sketchup.skp");
    public static final MediaType TAR = a("application", "x-tar");
    public static final MediaType WOFF = a("application", "font-woff");
    public static final MediaType XHTML_UTF_8 = b("application", "xhtml+xml");
    public static final MediaType XRD_UTF_8 = b("application", "xrd+xml");
    public static final MediaType ZIP = a("application", "zip");
    private static final Joiner.MapJoiner k = Joiner.on("; ").withKeyValueSeparator("=");

    private static MediaType a(String str, String str2) {
        return a(new MediaType(str, str2, ImmutableListMultimap.of()));
    }

    private static MediaType b(String str, String str2) {
        return a(new MediaType(str, str2, a));
    }

    private static MediaType a(MediaType mediaType) {
        e.put(mediaType, mediaType);
        return mediaType;
    }

    private MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.f = str;
        this.g = str2;
        this.h = immutableListMultimap;
    }

    public String type() {
        return this.f;
    }

    public String subtype() {
        return this.g;
    }

    public ImmutableListMultimap<String, String> parameters() {
        return this.h;
    }

    private Map<String, ImmutableMultiset<String>> b() {
        return Maps.transformValues(this.h.asMap(), new Function<Collection<String>, ImmutableMultiset<String>>() { // from class: com.google.common.net.MediaType.1
            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ImmutableMultiset<String> apply(Collection<String> collection) {
                return ImmutableMultiset.copyOf(collection);
            }
        });
    }

    public Optional<Charset> charset() {
        ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) this.h.get("charset"));
        switch (immutableSetCopyOf.size()) {
            case 0:
                return Optional.absent();
            case 1:
                return Optional.of(Charset.forName((String) Iterables.getOnlyElement(immutableSetCopyOf)));
            default:
                String strValueOf = String.valueOf(immutableSetCopyOf);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 33).append("Multiple charset values defined: ").append(strValueOf).toString());
        }
    }

    public MediaType withoutParameters() {
        return this.h.isEmpty() ? this : create(this.f, this.g);
    }

    public MediaType withParameters(Multimap<String, String> multimap) {
        return a(this.f, this.g, multimap);
    }

    public MediaType withParameter(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        String strB = b(str);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        UnmodifiableIterator<Map.Entry<String, String>> it = this.h.entries().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            if (!strB.equals(key)) {
                builder.put(key, next.getValue());
            }
        }
        builder.put(strB, c(strB, str2));
        MediaType mediaType = new MediaType(this.f, this.g, builder.build());
        return (MediaType) MoreObjects.firstNonNull(e.get(mediaType), mediaType);
    }

    public MediaType withCharset(Charset charset) {
        Preconditions.checkNotNull(charset);
        return withParameter("charset", charset.name());
    }

    public boolean hasWildcard() {
        return Constraint.ANY_ROLE.equals(this.f) || Constraint.ANY_ROLE.equals(this.g);
    }

    public boolean is(MediaType mediaType) {
        return (mediaType.f.equals(Constraint.ANY_ROLE) || mediaType.f.equals(this.f)) && (mediaType.g.equals(Constraint.ANY_ROLE) || mediaType.g.equals(this.g)) && this.h.entries().containsAll(mediaType.h.entries());
    }

    public static MediaType create(String str, String str2) {
        return a(str, str2, ImmutableListMultimap.of());
    }

    private static MediaType a(String str, String str2, Multimap<String, String> multimap) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(multimap);
        String strB = b(str);
        String strB2 = b(str2);
        Preconditions.checkArgument(!Constraint.ANY_ROLE.equals(strB) || Constraint.ANY_ROLE.equals(strB2), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : multimap.entries()) {
            String strB3 = b(entry.getKey());
            builder.put(strB3, c(strB3, entry.getValue()));
        }
        MediaType mediaType = new MediaType(strB, strB2, builder.build());
        return (MediaType) MoreObjects.firstNonNull(e.get(mediaType), mediaType);
    }

    private static String b(String str) {
        Preconditions.checkArgument(b.matchesAllOf(str));
        return Ascii.toLowerCase(str);
    }

    private static String c(String str, String str2) {
        return "charset".equals(str) ? Ascii.toLowerCase(str2) : str2;
    }

    public static MediaType parse(String str) {
        String strB;
        Preconditions.checkNotNull(str);
        a aVar = new a(str);
        try {
            String strB2 = aVar.b(b);
            aVar.a('/');
            String strB3 = aVar.b(b);
            ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
            while (aVar.b()) {
                aVar.a(';');
                aVar.a(d);
                String strB4 = aVar.b(b);
                aVar.a('=');
                if ('\"' == aVar.a()) {
                    aVar.a('\"');
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != aVar.a()) {
                        if ('\\' == aVar.a()) {
                            aVar.a('\\');
                            sb.append(aVar.c(CharMatcher.ASCII));
                        } else {
                            sb.append(aVar.b(c));
                        }
                    }
                    strB = sb.toString();
                    aVar.a('\"');
                } else {
                    strB = aVar.b(b);
                }
                builder.put(strB4, strB);
            }
            return a(strB2, strB3, builder.build());
        } catch (IllegalStateException e2) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 18).append("Could not parse '").append(str).append("'").toString(), e2);
        }
    }

    static final class a {
        final String a;
        int b = 0;

        a(String str) {
            this.a = str;
        }

        String a(CharMatcher charMatcher) {
            Preconditions.checkState(b());
            int i = this.b;
            this.b = charMatcher.negate().indexIn(this.a, i);
            return b() ? this.a.substring(i, this.b) : this.a.substring(i);
        }

        String b(CharMatcher charMatcher) {
            int i = this.b;
            String strA = a(charMatcher);
            Preconditions.checkState(this.b != i);
            return strA;
        }

        char c(CharMatcher charMatcher) {
            Preconditions.checkState(b());
            char cA = a();
            Preconditions.checkState(charMatcher.matches(cA));
            this.b++;
            return cA;
        }

        char a(char c) {
            Preconditions.checkState(b());
            Preconditions.checkState(a() == c);
            this.b++;
            return c;
        }

        char a() {
            Preconditions.checkState(b());
            return this.a.charAt(this.b);
        }

        boolean b() {
            return this.b >= 0 && this.b < this.a.length();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        return this.f.equals(mediaType.f) && this.g.equals(mediaType.g) && b().equals(mediaType.b());
    }

    public int hashCode() {
        int i = this.j;
        if (i == 0) {
            int iHashCode = Objects.hashCode(this.f, this.g, b());
            this.j = iHashCode;
            return iHashCode;
        }
        return i;
    }

    public String toString() {
        String str = this.i;
        if (str == null) {
            String strC = c();
            this.i = strC;
            return strC;
        }
        return str;
    }

    private String c() {
        StringBuilder sbAppend = new StringBuilder().append(this.f).append('/').append(this.g);
        if (!this.h.isEmpty()) {
            sbAppend.append("; ");
            k.appendTo(sbAppend, Multimaps.transformValues((ListMultimap) this.h, (Function) new Function<String, String>() { // from class: com.google.common.net.MediaType.2
                @Override // com.google.common.base.Function
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public String apply(String str) {
                    return MediaType.b.matchesAllOf(str) ? str : MediaType.c(str);
                }
            }).entries());
        }
        return sbAppend.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        StringBuilder sbAppend = new StringBuilder(str.length() + 16).append('\"');
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sbAppend.append('\\');
            }
            sbAppend.append(cCharAt);
        }
        return sbAppend.append('\"').toString();
    }
}
