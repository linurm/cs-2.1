.class Lcom/heyzap/common/concurrency/ExecutorPool$ExecutorThreadFactory;
.super Ljava/lang/Object;
.source "ExecutorPool.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/concurrency/ExecutorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExecutorThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/concurrency/ExecutorPool;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/ExecutorPool;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/heyzap/common/concurrency/ExecutorPool$ExecutorThreadFactory;->this$0:Lcom/heyzap/common/concurrency/ExecutorPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "HeyzapThreadPool"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
