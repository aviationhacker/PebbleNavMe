.class public Lcom/batescorp/pebble/nav/lib/MyRestoreObserver;
.super Landroid/app/backup/RestoreObserver;
.source "SourceFile"


# instance fields
.field a:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/backup/RestoreObserver;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/MyRestoreObserver;->a:Landroid/content/ContextWrapper;

    .line 17
    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/app/backup/RestoreObserver;->onUpdate(ILjava/lang/String;)V

    .line 28
    const-string v0, "MyRestoreObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate - NavLicense: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    .line 34
    const-string v0, "MyRestoreObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished - NavLicense - : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/MyRestoreObserver;->a:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->saveStartTime()V

    .line 38
    :cond_0
    return-void
.end method

.method public restoreStarting(I)V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    .line 22
    const-string v0, "MyRestoreObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting - NavLicense - : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
