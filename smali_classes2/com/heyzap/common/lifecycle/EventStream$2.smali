.class Lcom/heyzap/common/lifecycle/EventStream$2;
.super Ljava/lang/Object;
.source "EventStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/lifecycle/EventStream;->addListener(Lcom/heyzap/common/lifecycle/EventStream$EventListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/lifecycle/EventStream;

.field final synthetic val$listener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# direct methods
.method constructor <init>(Lcom/heyzap/common/lifecycle/EventStream;Lcom/heyzap/common/lifecycle/EventStream$EventListener;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/EventStream$2;->this$0:Lcom/heyzap/common/lifecycle/EventStream;

    iput-object p2, p0, Lcom/heyzap/common/lifecycle/EventStream$2;->val$listener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/common/lifecycle/EventStream$2;->val$listener:Lcom/heyzap/common/lifecycle/EventStream$EventListener;

    iget-object v1, p0, Lcom/heyzap/common/lifecycle/EventStream$2;->this$0:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-static {v1}, Lcom/heyzap/common/lifecycle/EventStream;->access$200(Lcom/heyzap/common/lifecycle/EventStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream$EventListener;->onEvent(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
