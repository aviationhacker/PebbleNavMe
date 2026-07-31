.class public Lorg/eclipse/jetty/util/MultiException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "Multiple exceptions"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 46
    instance-of v0, p1, Lorg/eclipse/jetty/util/MultiException;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lorg/eclipse/jetty/util/MultiException;

    .line 49
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    iget-object v2, p1, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    .line 54
    :cond_1
    return-void
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrowables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ifExceptionThrow()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    throw p0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 90
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 92
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 97
    :pswitch_1
    return-void

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ifExceptionThrowMulti()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    throw p0

    .line 139
    :cond_0
    return-void
.end method

.method public ifExceptionThrowRuntime()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 117
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 119
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 120
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :pswitch_1
    return-void

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiException;->a:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
