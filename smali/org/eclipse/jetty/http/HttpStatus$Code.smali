.class public final enum Lorg/eclipse/jetty/http/HttpStatus$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/http/HttpStatus$Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field public static final enum USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;

.field private static final synthetic c:[Lorg/eclipse/jetty/http/HttpStatus$Code;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 690
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CONTINUE"

    const/16 v2, 0x64

    const-string v3, "Continue"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 692
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SWITCHING_PROTOCOLS"

    const/16 v2, 0x65

    const-string v3, "Switching Protocols"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 694
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PROCESSING"

    const/16 v2, 0x66

    const-string v3, "Processing"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 703
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 705
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 707
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x5

    const/16 v3, 0xca

    const-string v4, "Accepted"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 709
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NON_AUTHORITATIVE_INFORMATION"

    const/4 v2, 0x6

    const/16 v3, 0xcb

    const-string v4, "Non Authoritative Information"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 711
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NO_CONTENT"

    const/4 v2, 0x7

    const/16 v3, 0xcc

    const-string v4, "No Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 713
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "RESET_CONTENT"

    const/16 v2, 0x8

    const/16 v3, 0xcd

    const-string v4, "Reset Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 715
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PARTIAL_CONTENT"

    const/16 v2, 0x9

    const/16 v3, 0xce

    const-string v4, "Partial Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 717
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MULTI_STATUS"

    const/16 v2, 0xa

    const/16 v3, 0xcf

    const-string v4, "Multi-Status"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 726
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MULTIPLE_CHOICES"

    const/16 v2, 0xb

    const/16 v3, 0x12c

    const-string v4, "Multiple Choices"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 728
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MOVED_PERMANENTLY"

    const/16 v2, 0xc

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 730
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "MOVED_TEMPORARILY"

    const/16 v2, 0xd

    const/16 v3, 0x12e

    const-string v4, "Moved Temporarily"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 732
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FOUND"

    const/16 v2, 0xe

    const/16 v3, 0x12e

    const-string v4, "Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 734
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SEE_OTHER"

    const/16 v2, 0xf

    const/16 v3, 0x12f

    const-string v4, "See Other"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 736
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_MODIFIED"

    const/16 v2, 0x10

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 738
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "USE_PROXY"

    const/16 v2, 0x11

    const/16 v3, 0x131

    const-string v4, "Use Proxy"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 740
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "TEMPORARY_REDIRECT"

    const/16 v2, 0x12

    const/16 v3, 0x133

    const-string v4, "Temporary Redirect"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 749
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x13

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 751
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x14

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 753
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PAYMENT_REQUIRED"

    const/16 v2, 0x15

    const/16 v3, 0x192

    const-string v4, "Payment Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 755
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x16

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 757
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0x17

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 759
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0x18

    const/16 v3, 0x195

    const-string v4, "Method Not Allowed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 761
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v2, 0x19

    const/16 v3, 0x196

    const-string v4, "Not Acceptable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 763
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PROXY_AUTHENTICATION_REQUIRED"

    const/16 v2, 0x1a

    const/16 v3, 0x197

    const-string v4, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 765
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x1b

    const/16 v3, 0x198

    const-string v4, "Request Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 767
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "CONFLICT"

    const/16 v2, 0x1c

    const/16 v3, 0x199

    const-string v4, "Conflict"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 769
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "GONE"

    const/16 v2, 0x1d

    const/16 v3, 0x19a

    const-string v4, "Gone"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 771
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "LENGTH_REQUIRED"

    const/16 v2, 0x1e

    const/16 v3, 0x19b

    const-string v4, "Length Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 773
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v2, 0x1f

    const/16 v3, 0x19c

    const-string v4, "Precondition Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 775
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_ENTITY_TOO_LARGE"

    const/16 v2, 0x20

    const/16 v3, 0x19d

    const-string v4, "Request Entity Too Large"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 777
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUEST_URI_TOO_LONG"

    const/16 v2, 0x21

    const/16 v3, 0x19e

    const-string v4, "Request-URI Too Long"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 779
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v2, 0x22

    const/16 v3, 0x19f

    const-string v4, "Unsupported Media Type"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 781
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "REQUESTED_RANGE_NOT_SATISFIABLE"

    const/16 v2, 0x23

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 783
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "EXPECTATION_FAILED"

    const/16 v2, 0x24

    const/16 v3, 0x1a1

    const-string v4, "Expectation Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 785
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "UNPROCESSABLE_ENTITY"

    const/16 v2, 0x25

    const/16 v3, 0x1a6

    const-string v4, "Unprocessable Entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 787
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "LOCKED"

    const/16 v2, 0x26

    const/16 v3, 0x1a7

    const-string v4, "Locked"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 789
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "FAILED_DEPENDENCY"

    const/16 v2, 0x27

    const/16 v3, 0x1a8

    const-string v4, "Failed Dependency"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 798
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/16 v2, 0x28

    const/16 v3, 0x1f4

    const-string v4, "Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 800
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x29

    const/16 v3, 0x1f5

    const-string v4, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 802
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "BAD_GATEWAY"

    const/16 v2, 0x2a

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 804
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0x2b

    const/16 v3, 0x1f7

    const-string v4, "Service Unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 806
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "GATEWAY_TIMEOUT"

    const/16 v2, 0x2c

    const/16 v3, 0x1f8

    const-string v4, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 808
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "HTTP_VERSION_NOT_SUPPORTED"

    const/16 v2, 0x2d

    const/16 v3, 0x1f9

    const-string v4, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 810
    new-instance v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/16 v2, 0x2e

    const/16 v3, 0x1fb

    const-string v4, "Insufficient Storage"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpStatus$Code;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 681
    const/16 v0, 0x2f

    new-array v0, v0, [Lorg/eclipse/jetty/http/HttpStatus$Code;

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONTINUE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->SWITCHING_PROTOCOLS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROCESSING:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->OK:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/jetty/http/HttpStatus$Code;->CREATED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->ACCEPTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NON_AUTHORITATIVE_INFORMATION:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NO_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->RESET_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->PARTIAL_CONTENT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTI_STATUS:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->MULTIPLE_CHOICES:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_PERMANENTLY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->MOVED_TEMPORARILY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->SEE_OTHER:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_MODIFIED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->USE_PROXY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->TEMPORARY_REDIRECT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_REQUEST:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNAUTHORIZED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->PAYMENT_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->FORBIDDEN:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_FOUND:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->METHOD_NOT_ALLOWED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_ACCEPTABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->PROXY_AUTHENTICATION_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->CONFLICT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->GONE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->LENGTH_REQUIRED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->PRECONDITION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_ENTITY_TOO_LARGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUEST_URI_TOO_LONG:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNSUPPORTED_MEDIA_TYPE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->EXPECTATION_FAILED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->UNPROCESSABLE_ENTITY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->LOCKED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->FAILED_DEPENDENCY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->INTERNAL_SERVER_ERROR:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->NOT_IMPLEMENTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->BAD_GATEWAY:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->SERVICE_UNAVAILABLE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->GATEWAY_TIMEOUT:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->HTTP_VERSION_NOT_SUPPORTED:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lorg/eclipse/jetty/http/HttpStatus$Code;->INSUFFICIENT_STORAGE:Lorg/eclipse/jetty/http/HttpStatus$Code;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->c:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 817
    iput p3, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    .line 818
    iput-object p4, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->b:Ljava/lang/String;

    .line 819
    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/http/HttpStatus$Code;)I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpStatus$Code;
    .locals 1

    .prologue
    .line 681
    const-class v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/http/HttpStatus$Code;
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lorg/eclipse/jetty/http/HttpStatus$Code;->c:[Lorg/eclipse/jetty/http/HttpStatus$Code;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/http/HttpStatus$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/http/HttpStatus$Code;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isClientError()Z
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isClientError(I)Z

    move-result v0

    return v0
.end method

.method public isInformational()Z
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isInformational(I)Z

    move-result v0

    return v0
.end method

.method public isRedirection()Z
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isRedirection(I)Z

    move-result v0

    return v0
.end method

.method public isServerError()Z
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isServerError(I)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 840
    const-string v0, "[%03d %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/eclipse/jetty/http/HttpStatus$Code;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
