.class public final Lml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lml;->b:I

    .line 45
    iput-object p1, p0, Lml;->a:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    instance-of v1, p1, Lml;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    check-cast p1, Lml;

    .line 68
    iget v1, p0, Lml;->b:I

    iget v2, p1, Lml;->b:I

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lml;->a:Ljava/lang/Object;

    iget-object v2, p1, Lml;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lml;->b:I

    return v0
.end method
