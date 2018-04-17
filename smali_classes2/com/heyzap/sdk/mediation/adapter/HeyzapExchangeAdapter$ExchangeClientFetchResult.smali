.class Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;
.super Lcom/heyzap/common/lifecycle/FetchResult;
.source "HeyzapExchangeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExchangeClientFetchResult"
.end annotation


# instance fields
.field private final client:Lcom/heyzap/exchange/ExchangeClient;


# direct methods
.method public constructor <init>(Lcom/heyzap/exchange/ExchangeClient;)V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->client:Lcom/heyzap/exchange/ExchangeClient;

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->success:Z

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 353
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->errorMessage:Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->success:Z

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->client:Lcom/heyzap/exchange/ExchangeClient;

    .line 356
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;)Lcom/heyzap/exchange/ExchangeClient;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->client:Lcom/heyzap/exchange/ExchangeClient;

    return-object v0
.end method


# virtual methods
.method public getClient()Lcom/heyzap/exchange/ExchangeClient;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapExchangeAdapter$ExchangeClientFetchResult;->client:Lcom/heyzap/exchange/ExchangeClient;

    return-object v0
.end method
