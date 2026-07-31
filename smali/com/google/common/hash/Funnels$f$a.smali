.class Lcom/google/common/hash/Funnels$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/Funnels$f$a;->a:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/common/hash/Funnels$f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/Funnels;->stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    return-object v0
.end method
