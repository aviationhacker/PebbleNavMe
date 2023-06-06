.class Lorg/eclipse/jetty/http/HttpFields$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/GregorianCalendar;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpFields$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x20

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 106
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 107
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 108
    div-int/lit8 v4, v3, 0x64

    .line 109
    rem-int/lit8 v3, v3, 0x64

    .line 111
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 112
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 113
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 115
    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->a()[Ljava/lang/String;

    move-result-object v9

    aget-object v0, v9, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->b()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v6}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, v7}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    const-string v1, " GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;J)V
    .locals 12

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x20

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 147
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$a;->b:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 148
    rem-int/lit16 v3, v3, 0x2710

    .line 150
    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    const-wide/32 v6, 0x15180

    rem-long/2addr v4, v6

    long-to-int v4, v4

    .line 151
    rem-int/lit8 v5, v4, 0x3c

    .line 152
    div-int/lit8 v4, v4, 0x3c

    .line 153
    rem-int/lit8 v6, v4, 0x3c

    .line 154
    div-int/lit8 v4, v4, 0x3c

    .line 156
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->a()[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 161
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->b()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    div-int/lit8 v0, v3, 0x64

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 165
    rem-int/lit8 v0, v3, 0x64

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 167
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 169
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p1, v6}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 171
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1, v5}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 173
    const-string v0, " GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    return-void
.end method
