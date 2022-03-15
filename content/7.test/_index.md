---
title: "Test Section"
chapter: false
weight: 100
pre: "<b>7. </b>"
---

{{% notice info%}}
We would very much appreciate it if you would take [our survey](https://docs.google.com/forms/d/e/1FAIpQLSdS8rG5zn7GcLi3b_JEK7xAODHVaMu-ehH7RiU7mHgAdt7zKw/viewform?fbzx=-5379244279693983460) so that we can improve the content for next time! Responses are anonymous. 
{{% /notice%}}


The web server you created in this workshops is in the [free tier](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc).

However you should take care to shutdown the instance and remove the storage volume so that you do not incur any costs.

On a related note, check out the [pricing of EC2](https://aws.amazon.com/ec2/pricing/on-demand/) instances and [EBS volumes](https://aws.amazon.com/ebs/pricing/). You'll see that
the pricing of instances varies widely. Our t2.micro instance in us-east-1 costs $0.0116/hr -- that is, a little over a penny. Reading further, 
you'll notice that these so-called on-demand instances are actually charged _per second_.
<br>

Elastic Block Store (EBS) storage is charged a bit differently than EC2. Our EBS volume costs $0.08/GB-month. Notice that there are
different choices for EBS volumes. These options will be discussed in an upcoming storage session. 
