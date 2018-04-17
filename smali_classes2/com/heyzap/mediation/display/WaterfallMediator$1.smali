.class Lcom/heyzap/mediation/display/WaterfallMediator$1;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator;->mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

.field final synthetic val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$1;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$1;->val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$1;->val$displayConfigFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "display cancelled"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 55
    return-void
.end method
