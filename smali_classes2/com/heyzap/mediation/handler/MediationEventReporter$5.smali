.class Lcom/heyzap/mediation/handler/MediationEventReporter$5;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "MediationEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/MediationEventReporter;->bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

.field final synthetic val$baseParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$5;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$5;->val$baseParams:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$5;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    new-instance v1, Lcom/heyzap/http/RequestParams;

    iget-object v2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$5;->val$baseParams:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->access$200(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/handler/MediationEventReporter$5;->run(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
