.class LAdjustMarmalade$1;
.super Ljava/lang/Object;
.source "AdjustMarmalade.java"

# interfaces
.implements Lcom/adjust/sdk/OnDeviceIdsRead;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdjustMarmalade;->adjust_GetGoogleAdId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdjustMarmalade;


# direct methods
.method constructor <init>(LAdjustMarmalade;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, LAdjustMarmalade$1;->this$0:LAdjustMarmalade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoogleAdIdRead(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, LAdjustMarmalade$1;->this$0:LAdjustMarmalade;

    invoke-virtual {v0, p1}, LAdjustMarmalade;->googleAdIdCallback(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, LAdjustMarmalade$1;->this$0:LAdjustMarmalade;

    const-string v1, ""

    invoke-virtual {v0, v1}, LAdjustMarmalade;->googleAdIdCallback(Ljava/lang/String;)V

    goto :goto_0
.end method
