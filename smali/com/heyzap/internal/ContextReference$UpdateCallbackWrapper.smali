.class public Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;
.super Ljava/lang/Object;
.source "ContextReference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateCallbackWrapper"
.end annotation


# instance fields
.field public final callback:Ljava/lang/Runnable;

.field public final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-object p1, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->callback:Ljava/lang/Runnable;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 73
    :cond_3
    check-cast p1, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;

    .line 75
    iget-object v2, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->callback:Ljava/lang/Runnable;

    iget-object v3, p1, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p1, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;->callback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    return-void
.end method
