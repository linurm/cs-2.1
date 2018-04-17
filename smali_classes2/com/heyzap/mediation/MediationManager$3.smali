.class Lcom/heyzap/mediation/MediationManager$3;
.super Ljava/lang/Object;
.source "MediationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager;->setAdsTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/MediationManager;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$3;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$3;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$500(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.heyzap.sdk.ads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    const-string v1, "time_till_ads"

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$3;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v2}, Lcom/heyzap/mediation/MediationManager;->access$600(Lcom/heyzap/mediation/MediationManager;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method
