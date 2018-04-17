.class Lcom/heyzap/common/lifecycle/EventStream$1;
.super Ljava/lang/Object;
.source "EventStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/lifecycle/EventStream;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$pair:Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;


# direct methods
.method constructor <init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/EventStream$1;->this$0:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object p2, p0, Lcom/heyzap/common/lifecycle/EventStream$1;->val$pair:Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;

    iput-object p3, p0, Lcom/heyzap/common/lifecycle/EventStream$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream$1;->val$pair:Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;

    invoke-static {v0}, Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;->access$000(Lcom/heyzap/common/lifecycle/EventStream$EventListenerExecutorPair;)Lcom/heyzap/common/lifecycle/EventStream$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/lifecycle/EventStream$1;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream$EventListener;->onEvent(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
