.class synthetic Lcom/heyzap/mediation/config/MediationConfig$1;
.super Ljava/lang/Object;
.source "MediationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/config/MediationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$heyzap$internal$Constants$AdUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/heyzap/mediation/config/MediationConfig$1;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    :try_start_0
    sget-object v0, Lcom/heyzap/mediation/config/MediationConfig$1;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
