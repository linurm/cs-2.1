.class final synthetic Lcom/vungle/publisher/db/model/StreamingAd$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/StreamingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/vungle/publisher/bj$b;->values()[Lcom/vungle/publisher/bj$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/db/model/StreamingAd$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/vungle/publisher/db/model/StreamingAd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/bj$b;->d:Lcom/vungle/publisher/bj$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/bj$b;->ordinal()I

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
