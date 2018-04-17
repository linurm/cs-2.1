.class Lcom/heyzap/common/video/view/VideoControlView$4;
.super Landroid/os/CountDownTimer;
.source "VideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/video/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/video/view/VideoControlView;

.field final synthetic val$formattedSkipLaterText:Ljava/lang/String;

.field final synthetic val$skipNowText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/common/video/view/VideoControlView;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->this$0:Lcom/heyzap/common/video/view/VideoControlView;

    iput-object p6, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->val$formattedSkipLaterText:Ljava/lang/String;

    iput-object p7, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->val$skipNowText:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->this$0:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/VideoControlView;->access$200(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 243
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->val$skipNowText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 247
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->this$0:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-static {v1}, Lcom/heyzap/common/video/view/VideoControlView;->access$100(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->this$0:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/VideoControlView;->access$100(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 232
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->val$formattedSkipLaterText:Ljava/lang/String;

    const-string v2, "%i"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 237
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView$4;->this$0:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/VideoControlView;->access$100(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
