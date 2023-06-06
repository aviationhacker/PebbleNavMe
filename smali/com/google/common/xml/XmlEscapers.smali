.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final a:Lcom/google/common/escape/Escaper;

.field private static final b:Lcom/google/common/escape/Escaper;

.field private static final c:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 120
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v1

    .line 124
    const v2, 0xfffd

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;

    .line 126
    const-string v2, "\ufffd"

    invoke-virtual {v1, v2}, Lcom/google/common/escape/Escapers$Builder;->setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 138
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 139
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 140
    const-string v2, "\ufffd"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 147
    const/16 v0, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 148
    const/16 v0, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 149
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->b:Lcom/google/common/escape/Escaper;

    .line 150
    const/16 v0, 0x27

    const-string v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 151
    const/16 v0, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 152
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->a:Lcom/google/common/escape/Escaper;

    .line 153
    const-string v0, "&#x9;"

    invoke-virtual {v1, v3, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 154
    const-string v0, "&#xA;"

    invoke-virtual {v1, v4, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 155
    const-string v0, "&#xD;"

    invoke-virtual {v1, v5, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 156
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->c:Lcom/google/common/escape/Escaper;

    .line 157
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xmlAttributeEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->c:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method public static xmlContentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->b:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
