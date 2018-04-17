.class synthetic Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

.field static final synthetic $SwitchMap$com$heyzap$internal$Constants$CreativeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/heyzap/internal/Constants$CreativeType;->values()[Lcom/heyzap/internal/Constants$CreativeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    :try_start_0
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_0
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    :try_start_1
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    .line 128
    :catch_2
    move-exception v0

    goto :goto_0
.end method
