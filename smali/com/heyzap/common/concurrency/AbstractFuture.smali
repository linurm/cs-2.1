.class public abstract Lcom/heyzap/common/concurrency/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/heyzap/common/concurrency/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/concurrency/AbstractFuture$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/concurrency/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Lcom/heyzap/common/concurrency/ExecutionList;

.field private final sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/AbstractFuture$Sync",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    .line 70
    new-instance v0, Lcom/heyzap/common/concurrency/ExecutionList;

    invoke-direct {v0}, Lcom/heyzap/common/concurrency/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->executionList:Lcom/heyzap/common/concurrency/ExecutionList;

    .line 251
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->executionList:Lcom/heyzap/common/concurrency/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/heyzap/common/concurrency/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 155
    return-void
.end method

.method protected final cancel()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->cancel()Z

    move-result v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;->done()V

    .line 218
    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;->done()V

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;->interruptTask()V

    .line 132
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected done()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->executionList:Lcom/heyzap/common/concurrency/ExecutionList;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/ExecutionList;->execute()V

    .line 233
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected interruptTask()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;->done()V

    .line 171
    :cond_0
    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/heyzap/common/concurrency/AbstractFuture;->sync:Lcom/heyzap/common/concurrency/AbstractFuture$Sync;

    invoke-static {p1}, Lcom/heyzap/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;->done()V

    .line 192
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 193
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 195
    :cond_1
    return v0
.end method
