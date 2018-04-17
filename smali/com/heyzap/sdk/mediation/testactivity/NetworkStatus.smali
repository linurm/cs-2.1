.class public Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# instance fields
.field public fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private localStatus:I

.field private name:Ljava/lang/String;

.field private networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field private remoteStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getFetchRequestStore()Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method public getLocalStatus()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    return v0
.end method

.method public getLocalTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 48
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 50
    iget v1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v1, "No SDK Detected"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v1, "SDK Detected"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getManifestTextView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x10000

    const v5, -0xff0100

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 69
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 70
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 72
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 74
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-static {v3}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v3, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->checkActivities(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 78
    const-string v3, "All Activities Found"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v3, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->checkPermissions(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 86
    const-string v3, "All Permissions Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 82
    const-string v3, "Manifest Missing Activities"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 90
    const-string v3, "Missing Permissions"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    return-object v0
.end method

.method public getNetworkStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    iget v1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteStatus()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    return v0
.end method

.method public getRemoteTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, -0x777778

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v6, -0x10000

    const v5, -0xff0100

    const/4 v4, 0x1

    .line 98
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 103
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 106
    iget v3, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    packed-switch v3, :pswitch_data_0

    .line 135
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-object v0

    .line 108
    :pswitch_0
    const-string v3, "No Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const-string v3, "Network Not Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 111
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v3, "Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    const-string v3, "Network Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 119
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v3, "Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    const-string v3, "Network Not Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 129
    :pswitch_3
    const-string v3, "Network Error"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 131
    const-string v3, "Network Error"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setNetworkAdapter(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 151
    if-nez p1, :cond_0

    .line 152
    iput v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getFetchStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 158
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isOnBoard()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    goto :goto_0
.end method

.method public setRemoteStatus(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    .line 44
    return-void
.end method
