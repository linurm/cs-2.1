.class Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;
.super Ljava/lang/Object;
.source "EventStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/lifecycle/EventStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListenerExecutorPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eventListener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
            "<TV;>;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/heyzap/common/lifecycle/EventStream;


# direct methods
.method public constructor <init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->this$0:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->eventListener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;

    .line 73
    iput-object p3, p0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;)Lcom/heyzap/common/lifecycle/EventStream$EventListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->eventListener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
