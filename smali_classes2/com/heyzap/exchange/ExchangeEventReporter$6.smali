.class Lcom/heyzap/exchange/ExchangeEventReporter$6;
.super Lcom/heyzap/http/SyncJsonHttpResponseHandler;
.source "ExchangeEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/exchange/ExchangeEventReporter;->onClick(Lcom/heyzap/exchange/ExchangeClient;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/exchange/ExchangeEventReporter;


# direct methods
.method constructor <init>(Lcom/heyzap/exchange/ExchangeEventReporter;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/heyzap/exchange/ExchangeEventReporter$6;->this$0:Lcom/heyzap/exchange/ExchangeEventReporter;

    invoke-direct {p0}, Lcom/heyzap/http/SyncJsonHttpResponseHandler;-><init>()V

    return-void
.end method
