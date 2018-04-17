.class Lcom/heyzap/mediation/handler/MediationEventReporter$8;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "MediationEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/MediationEventReporter;->onFetch(Lcom/heyzap/http/RequestParams;Lcom/heyzap/mediation/MediationResult$NetworkResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$8;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method
