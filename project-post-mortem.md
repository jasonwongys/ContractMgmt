Project Post Mortem
Post mortems are important to understand about what happened in a project and actively think about what you learned.

Post-mortems are meant to be a blame-less space open to objective conversation about what went well and what could be improved.

Even in the examples below, where tens of millions of dollars could be lost, the best approach is to think through the series of events that led to the outcome.

Large mistakes are almost never the fault of the developer, but of the sytems and processes in place to prevent errors and problems.

https://github.com/danluu/post-mortems https://blog.codinghorror.com/the-project-postmortem/

What to Bring
Please answer the following questions. Take at least 30 minutes to prepare.

Approach and Process
What in my process and approach to this project would I do differently next time?
Ans: Complete bootstrap earlier. Need better planning for the app features. Suppose to have a table to display all bids for each projects

What in my process and approach to this project went well that I would repeat next time?
Ans: Wireframing and table design. 
--

Code and Code Design
What in my code and program design in the project would I do differently next time?
Ans: Need to improve my coding skills and understanding of each stack(RubyOnRails, ReactJS etc). Initially plan to use ReactJS for frontend but afraid to it might not work for some features

What in my code and program design in the project went well? Is there anything I would do the same next time?
Ans: Better understanding of rails webpack. 

For each, please include code examples.

Code snippet up to 20 lines.

    project = Project.find(params[:projects_vendors][:project_id])
    
    vendor = Vendor.find(params[:projects_vendors][:vendor_id])

    #bid = ProjectsVendor.find(params[projects_vendors][:bidPrice])

    project.vendors << vendor

Code design documents or architecture drawings / diagrams.

WDI Unit 4 Post Mortem
What habits did I use during this unit that helped me?
Ans: Wireframing and drawing the ERD Models to show relationships between tables

What habits did I have during this unit that I can improve on?
Ans: Time management

How is the overall level of the course overall? (instruction, course materials, etc.)
Ans: Good exposure overall of all the required developer skillsets needed. 