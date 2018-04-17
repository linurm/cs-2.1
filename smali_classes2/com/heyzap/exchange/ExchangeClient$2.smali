.class synthetic Lcom/heyzap/exchange/ExchangeClient$2;
.super Ljava/lang/Object;
.source "ExchangeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->values()[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    :try_start_0
    sget-object v0, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/heyzap/exchange/ExchangeClient$2;->$SwitchMap$com$heyzap$exchange$ExchangeRequestParams$APIFramework:[I

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
