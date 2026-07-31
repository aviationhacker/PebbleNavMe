.class public Lorg/eclipse/jetty/util/component/Container$Relationship;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationship"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lorg/eclipse/jetty/util/component/Container;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->d:Lorg/eclipse/jetty/util/component/Container;

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    .line 249
    iput-object p4, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/Container$1;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/util/component/Container$Relationship;-><init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    check-cast p1, Lorg/eclipse/jetty/util/component/Container$Relationship;

    .line 290
    iget-object v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lorg/eclipse/jetty/util/component/Container;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->d:Lorg/eclipse/jetty/util/component/Container;

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
