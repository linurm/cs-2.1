.class synthetic Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$5;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$heyzap$internal$Constants$CreativeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/heyzap/internal/Constants$CreativeType;->values()[Lcom/heyzap/internal/Constants$CreativeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    :try_start_0
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$CreativeType:[I

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$CreativeType;->ordinal()I

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
